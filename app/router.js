"use strict";

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = (app) => {
  const { router, controller } = app;
  // console.log(controller);

  router.post("/user/login", controller.user.login);
  router.post("/user/logout", controller.user.logout);
  router.resources("user", "/user", controller.user);

  // resources 参数： 'routerName', 'pathMatch', controller
  router.resources("column", "/columns", controller.column);

  router.resources("post", "/posts", controller.post);

  router.post("/upload", controller.utils.uploadFiles);
};
