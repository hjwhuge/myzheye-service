"use strict";

const BaseController = require("./base");

class ColumnController extends BaseController {
  // 专栏列表
  async index() {
    const { ctx, success } = this;
    const { page, size } = ctx.query;
    const res = await ctx.service.column.find({ page, size });
    success(res);
  }
  // 新增专栏
  async create() {
    const { ctx, success } = this;
    // console.log(ctx.request.body);
    const res = await ctx.service.column.insert(ctx.request.body);
    if (res) {
      success("专栏新增成功");
    }
  }
  // 专栏详情
  async show() {
    const { ctx, success } = this;
    const res = await ctx.service.column.findOne(ctx.params);
    success(res);
  }
  // 更新专栏
  async update() {
    const { ctx, success } = this;
    const { id } = ctx.params;
    const res = await ctx.service.column.update({ id, ...ctx.request.body });
    if (res) {
      success("专栏修改成功");
    }
  }
}

module.exports = ColumnController;
