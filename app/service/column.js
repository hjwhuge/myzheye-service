"use strict";

const Service = require("egg").Service;

class UserService extends Service {
  async findOne(data) {
    // console.log(data);
    const result = await this.app.mysql.get("column", data);
    // console.log(result);
    return result;
  }
  async find(data) {
    const { page, size } = data;
    const limit = Number(size);
    const offset = (page - 1) * size;
    const result = await this.app.mysql.select("column", {
      limit, // 返回数据量
      offset, // 数据偏移量
    });
    const totalCount = await this.app.mysql.count("column");
    return {
      list: result,
      page,
      size,
      totalCount,
    };
  }
  async insert(data) {
    // console.log(data);
    const result = await this.app.mysql.insert("column", data);
    const insertSuccess = result.affectedRows === 1;
    if (insertSuccess) {
      return true;
    } else {
      return false;
    }
  }
  async update(data) {
    // console.log(data);
    const result = await this.app.mysql.update("column", data);
    const updateSuccess = result.affectedRows === 1;
    if (updateSuccess) {
      return true;
    } else {
      return false;
    }
  }
}

module.exports = UserService;
