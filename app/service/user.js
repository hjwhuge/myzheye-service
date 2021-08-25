"use strict";

const Service = require("egg").Service;

class UserService extends Service {
  async find(query) {
    const result = await this.app.mysql.select("user", query);
    return result;
  }
  async insert(data) {
    // console.log(data);
    const result = await this.app.mysql.insert("user", data);
    const insertSuccess = result.affectedRows === 1;
    if (insertSuccess) {
      return true;
    } else {
      return false;
    }
  }
  async update(data) {
    // console.log(data);
    const result = await this.app.mysql.update("user", data);
    const updateSuccess = result.affectedRows === 1;
    if (updateSuccess) {
      return true;
    } else {
      return false;
    }
  }
}

module.exports = UserService;
