/*
 * @Author: your name
 * @Date: 2021-08-17 15:20:36
 * @LastEditTime: 2021-08-19 15:11:59
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \learn\egg-example\app\controller\utils.js
 */
"use strict";

const BaseController = require("./base");

class UtilsController extends BaseController {
  // 获取用户信息
  async uploadFiles() {
    const { ctx, success } = this;
    const data = await ctx.service.utils.uploadFiles();
    // console.log(data);
    if (data) {
      success(data);
    } else {
      success(null, "上传失败", 1000);
    }
  }
}

module.exports = UtilsController;
