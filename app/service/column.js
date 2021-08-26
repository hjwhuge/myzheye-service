"use strict";

const Service = require("egg").Service;

class UserService extends Service {
  async findOne(data) {
    // console.log(data);
    const result = await this.app.mysql.select("user", {
      where: data,
      columns: ["id", "columnImage", "columnName", "columnDescription"], // 要查询的表字段
    });
    // console.log(result);
    return result[0];
  }
  async find(data) {
    const { page, size } = data;
    const limit = Number(size);
    const offset = (page - 1) * size;
    const result = await this.app.mysql.select("user", {
      columns: ["id", "columnImage", "columnName", "columnDescription"], // 要查询的表字段
      limit, // 返回数据量
      offset, // 数据偏移量
    });
    const totalCount = await this.app.mysql.count("user");
    return {
      list: result,
      page,
      size,
      totalCount,
    };
  }
}

module.exports = UserService;
