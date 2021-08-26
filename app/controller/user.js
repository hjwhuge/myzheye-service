"use strict";

const BaseController = require("./base");

class UserController extends BaseController {
  // 获取用户信息
  async index() {
    const { ctx, success } = this;
    const token = ctx.session.token;
    let { email } = ctx.helper.checkToken(token);
    const res = await ctx.service.user.find({
      where: { email },
      columns: ["id", "email", "nickName", "userImage"],
    });
    success(res[0]);
  }
  // 新增用户
  async create() {
    const { ctx, success } = this;
    let { email } = ctx.request.body;
    // console.log(ctx.request.body);
    // 验证用户是否存在
    let userinfo = await ctx.service.user.find({
      where: { email },
      columns: ["id", "email"],
    });

    if (userinfo.length) {
      success(null, "用户已存在", 1000);
      return;
    }

    const res = await ctx.service.user.insert(ctx.request.body);
    if (res) {
      success("用户新增成功");
    }
  }
  // 更新用户
  async update() {
    const { ctx, success } = this;
    const { id } = ctx.params;
    const res = await ctx.service.user.update({ id, ...ctx.request.body });
    if (res) {
      success("用户修改成功");
    }
  }

  async login() {
    const { ctx, success } = this;
    let { email, password } = ctx.request.body;
    // 校验参数，待补充

    // 验证用户是否存在
    let userinfo = await ctx.service.user.find({
      where: { email },
      columns: ["id", "email", "nickname", "password"],
    });

    if (!userinfo.length) {
      success(null, "用户名不存在", 1000);
      return;
    }

    userinfo = userinfo[0];
    // 校验密码是否正确
    if (userinfo.password !== password) {
      success(null, "密码不正确", 1000);
      return;
    }

    // 用户存在,生成token
    const token = ctx.helper.getToken({
      email,
    });
    ctx.session.token = token;
    ctx.cookies.set("token", token, {
      httpOnly: false, // 默认就是 true
      encrypt: true, // 加密传输
    });
    success(null, "用户登录成功");
  }
  async logout() {
    const { ctx, success } = this;
    ctx.session = null;
    ctx.cookies.set("token", null);
    success("用户登出成功");
  }
}

module.exports = UserController;
