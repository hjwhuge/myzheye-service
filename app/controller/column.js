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
  // 专栏详情
  async show() {
    const { ctx, success } = this;
    const res = await ctx.service.column.findOne(ctx.params);
    success(res);
  }
}

module.exports = ColumnController;
