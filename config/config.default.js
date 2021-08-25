/* eslint valid-jsdoc: "off" */

"use strict";

/**
 * @param {Egg.EggAppInfo} appInfo app info
 */
module.exports = (appInfo) => {
  /**
   * built-in config
   * @type {Egg.EggAppConfig}
   **/
  const config = (exports = {});

  // use for cookie sign key, should change to your own and keep security
  config.keys = appInfo.name + "_1628580222057_306";

  // add your user config here
  const userConfig = {
    // myAppName: 'egg',
  };

  config.security = {
    csrf: false,
  };

  config.jwt = {
    secret: "123456",
  };

  // config.multipart = {
  //   mode: "file",
  // };

  // config.qiniu = {
  //   accessKey: "_rMRH176aDtr-n3xI-aLmWsiVVgpSR3-NlmgBczG", //Access Key
  //   secretKey: "AE7AhwHYAhdQ61gJX6iBJ8aeNS8Rb3_qFCiWox1C", //Secret Key
  //   bucket: "qiniu-img-space", //要上传的空间名
  //   domainName: "qxypwyxw2.hn-bkt.clouddn.com", //空间绑定的域名
  // };

  config.cors = {
    origin: "*",
    allowMethods: "GET,HEAD,PUT,OPTIONS,POST,DELETE,PATCH",
  };

  // 全局统一错误处理
  config.onerror = {
    all(err, ctx) {
      // 在此处定义针对所有响应类型的错误处理方法
      // 注意，定义了 config.all 之后，其他错误处理方法不会再生效
      // console.log(err);
      ctx.body = {
        code: "1000",
        data: err,
        message: "系统错误",
      };
      // ctx.body = err.inner.message;
      // ctx.status = 500;
    },
  };

  //不需要验证token的路由
  config.routerAuth = ["/user/login", "/user"];

  // add your middleware config here
  //中间件执行顺序则是按照数组中的顺序执行
  config.middleware = ["auth"];

  // 操作数据库
  config.mysql = {
    // 单数据库信息配置
    client: {
      // host
      host: "localhost",
      // 端口号
      port: "3306",
      // 用户名
      user: "root",
      // 密码
      password: "Hjw123!@#",
      // 数据库名
      database: "zheye",
    },
    // 是否加载到 app 上，默认开启
    app: true,
    // 是否加载到 agent 上，默认关闭
    agent: false,
  };

  return {
    ...config,
    ...userConfig,
  };
};
