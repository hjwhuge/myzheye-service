module.exports = {
  // 生成token
  getToken(arr) {
    // console.log(arr);
    return this.app.jwt.sign(arr, this.app.config.jwt.secret);
  },
  //验证token
  checkToken(token) {
    return this.app.jwt.verify(token, this.app.config.jwt.secret);
  },
};
