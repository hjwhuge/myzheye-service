"use strict";
// app/controller/base.js
const Controller = require("egg").Controller;
class BaseController extends Controller {
  success = (data = null, message = "success", code = 2000) => {
    const { ctx } = this;
    ctx.status = 200;
    ctx.body = {
      code,
      message,
      data,
    };
  };
}
module.exports = BaseController;
