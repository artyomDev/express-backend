module.exports = app => {
  const Account = require("../controllers/account.controller.js");
  
  app.post("/account/addnew", Account.create);
  app.post("/account/getprofile", Account.getprofile);
  app.post("/account/updateprofile", Account.updateprofile);
  app.post("/account/changepassword", Account.changepassword);
  app.post("/account/getaccounts", Account.getaccounts);
  app.post("/account/getprofilebyid", Account.getprofilebyid);
  app.post("/account/suspend", Account.suspend);
  app.post("/account/delete", Account.delete);
  app.post("/account/checkrole", Account.checkrole);

};