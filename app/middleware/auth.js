module.exports = (options, app) => {
  return async function (ctx, next) {
    //拿到不需要验证的token的路由
    const routerAuth = app.config.routerAuth;
    //获取当前路由
    const url = ctx.url;
    //判断当前路由是否需要验证token
    const flag = routerAuth.includes(url);
    if (flag) {
      await next();
    } else {
      let token = ctx.cookies.get("token", {
        httpOnly: false, // 默认就是 true
        encrypt: true, // 加密传输
      });
      let sessionToken = ctx.session.token;
      // console.log(token, sessionToken);
      if (token && sessionToken && token === sessionToken) {
        await next();
      } else {
        // ctx.status = 401;
        ctx.body = {
          code: 1001,
          message: "token失效或解析错误",
          data: null,
        };
      }
      //获取token,如果没有传入token，则为空
      // var token = ctx.headers.authorization ? ctx.headers.authorization : "";
      // token = token.substring(7); //把Bearer 截取掉，解析的时候不需要加上Bearer

      // 解析token
      // try {
      //   const decode = await app.jwt.verify(token, app.config.jwt.secret);
      //   ctx.state.userinfo = decode;
      //   await next();
      // } catch (err) {}
    }
  };
};
