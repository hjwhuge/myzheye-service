"use strict";

const BaseController = require("./base");

class ColumnController extends BaseController {
  // 文章列表
  async index() {
    const { ctx, success } = this;
    const { page, size, columnId } = ctx.query;
    const res = await ctx.service.post.find({
      page,
      size,
      query: { columnId },
    });
    success(res);
  }
  // 新增文章
  async create() {
    const { ctx, success } = this;
    // console.log(ctx.request.body);
    const res = await ctx.service.post.insert(ctx.request.body);
    if (res) {
      success("文章新增成功");
    }
  }

  // 文章详情
  async show() {
    const { ctx, success } = this;
    const res = await ctx.service.post.findOne(ctx.params);
    success(res);
  }

  // 更新文章
  async update() {
    const { ctx, success } = this;
    const { id } = ctx.params;
    const res = await ctx.service.post.update({ id, ...ctx.request.body });
    if (res) {
      success("文章修改成功");
    }
  }

  // 更新文章
  async destroy() {
    const { ctx, success } = this;
    const { id } = ctx.params;
    const res = await ctx.service.post.destroy({ id });
    success(res, "文章删除成功");
  }
}

module.exports = ColumnController;