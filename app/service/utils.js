"use strict";

const Service = require("egg").Service;
const fs = require("fs");
const path = require("path");
const qiniu = require("qiniu");
const awaitWriteStream = require("await-stream-ready").write;
const sendToWormhole = require("stream-wormhole");
const md5 = require("md5");
const bucket = "qiniu-img-space"; //要上传的空间名
const imageUrl = "qxypwyxw2.hn-bkt.clouddn.com"; // 空间绑定的域名
const accessKey = "_rMRH176aDtr-n3xI-aLmWsiVVgpSR3-NlmgBczG"; //Access Key
const secretKey = "AE7AhwHYAhdQ61gJX6iBJ8aeNS8Rb3_qFCiWox1C"; //Secret Key
const mac = new qiniu.auth.digest.Mac(accessKey, secretKey);
const options = {
  scope: bucket,
};
const putPolicy = new qiniu.rs.PutPolicy(options);
const uploadToken = putPolicy.uploadToken(mac);
let config = new qiniu.conf.Config();
config.zone = qiniu.zone.Zone_z2;

class UtilsService extends Service {
  async uploadFiles() {
    const { ctx } = this;
    // 上传后缀名为 jiif 的图片，ctx.getFileStream() 会报错，直接进入全局异常
    const stream = await ctx.getFileStream();
    const filename =
      md5(stream.filename) + path.extname(stream.filename).toLocaleLowerCase();
    const localFilePath = path.join(__dirname, "../public/uploads", filename);
    const writeStream = fs.createWriteStream(localFilePath);
    try {
      await awaitWriteStream(stream.pipe(writeStream));
      const formUploader = new qiniu.form_up.FormUploader(config);
      const putExtra = new qiniu.form_up.PutExtra();
      const imgSrc = await new Promise((resolve, reject) => {
        formUploader.putFile(
          uploadToken,
          filename,
          localFilePath,
          putExtra,
          (respErr, respBody, respInfo) => {
            // console.log("formUploader", respErr, respBody, respInfo);
            if (respErr) {
              reject("");
            }
            if (respInfo.statusCode == 200) {
              resolve(imageUrl + "/" + respBody.key);
            } else {
              reject("");
            }
            // 上传之后删除本地文件
            fs.unlinkSync(localFilePath);
          }
        );
      });
      if (imgSrc !== "") {
        return {
          url: "http://" + imgSrc,
        };
      } else {
        return false;
      }
    } catch (err) {
      console.log(err);
      //如果出现错误，关闭管道
      await sendToWormhole(stream);
      return false;
    }
  }
}
module.exports = UtilsService;
