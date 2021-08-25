"use strict";

const Service = require("egg").Service;

class UserService extends Service {
  async findOne(data) {
    // console.log(data);
    const result = await this.app.mysql.get("post", data);
    return result;
  }
  async find(data) {
    const { page, size, query } = data;
    const limit = Number(size);
    const offset = (page - 1) * size;
    const result = await this.app.mysql.select("post", {
      where: query,
      limit, // 返回数据量
      offset, // 数据偏移量
    });
    const totalCount = await this.app.mysql.count("post", query);
    return {
      list: result,
      page,
      size,
      totalCount,
    };
  }
  async insert(data) {
    // console.log(data);
    const result = await this.app.mysql.insert("post", data);
    const insertSuccess = result.affectedRows === 1;
    if (insertSuccess) {
      return true;
    } else {
      return false;
    }
  }
  async update(data) {
    // console.log(data);
    const result = await this.app.mysql.update("post", data);
    const updateSuccess = result.affectedRows === 1;
    if (updateSuccess) {
      return true;
    } else {
      return false;
    }
  }
  async destroy(data) {
    const result = await this.app.mysql.delete("post", data);
    return result;
  }
}

module.exports = UserService;
