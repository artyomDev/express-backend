const Account = require("../models/account.model.js");

const resCallback = (res, err, data, defaultErrMessage = null) => {
  if (err) {
    if (err.kind === "not_found") {
      res.status(404).send({
        message: `Not found 'account'`
      });
    } else {
      res.status(500).send({
        message:
          defaultErrMessage || err.message || "Internal server error"
      });
    }
  } else {
    res.send(data);
  }
};

exports.create = (req, res) => {
  
  if (!req.session.email) {
    res.status(400).send({
      message: "No session!"
    });
  }

  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }
 
  Account.create(req.session.email, req.body, (err, data) => resCallback(res, err, data, "Some error occurred while creating the 'account'."));
};

exports.getprofile = (req, res) => {
  if (!req.session.email && !req.cookies.rememberMeEmail) {
    return res.send('loginFailed');
  } else if (!req.session.email && req.cookies.rememberMeEmail) {
    sqldb.promise().query(`SELECT * FROM user WHERE email = "${req.cookies.rememberMeEmail}" AND rememberme = ${true}`).then(function(resp){
      if(resp[0].length > 0) {
        req.session.email = req.cookies.rememberMeEmail;
        Page.getAll(req.body.filter, req.body.sorting, req.body.paging,
          (err, data) => resCallback(res, err, data, "Some error occurred while retrieving 'page's.")
        );
      } else {
        req.session.email = '';
        res.cookie('rememberMeEmail', '');
        return res.send('loginFailed');
      }
    });
  } else { 
    Account.getprofile(req.session.email, (err, data) => resCallback(res, err, data, "Some error occurred while getprofile."));
  }
};

exports.getprofilebyid = (req, res) => {
  
  if (!req.session.email) {
    res.status(400).send({
      message: "No session!"
    });
  }

  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }
 
  Account.getprofilebyid(req.body, (err, data) => resCallback(res, err, data, "Some error occurred while getprofilebyid."));
};

exports.updateprofile = (req, res) => {
  
  if (!req.session.email) {
    res.status(400).send({
      message: "No session!"
    });
  }

  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }
 
  Account.updateprofile(req.body, (err, data) => resCallback(res, err, data, "Some error occurred while updateprofile."));
};

exports.changepassword = (req, res) => {
  
  if (!req.session.email) {
    res.status(400).send({
      message: "No session!"
    });
  }

  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }
 
  Account.changepassword(req.body, (err, data) => resCallback(res, err, data, "Some error occurred while changepassword."));
};

exports.getaccounts = (req, res) => {

  if (!req.session.email && !req.cookies.rememberMeEmail) {
    return res.send('loginFailed');
  } else if (!req.session.email && req.cookies.rememberMeEmail) {
    sqldb.promise().query(`SELECT * FROM user WHERE email = "${req.cookies.rememberMeEmail}" AND rememberme = ${true}`).then(function(resp){
      if(resp[0].length > 0) {
        req.session.email = req.cookies.rememberMeEmail;
        Page.getAll(req.body.filter, req.body.sorting, req.body.paging,
          (err, data) => resCallback(res, err, data, "Some error occurred while retrieving 'page's.")
        );
      } else {
        req.session.email = '';
        res.cookie('rememberMeEmail', '');
        return res.send('loginFailed');
      }
    });
  } else {
    Account.getaccounts(req.session.email, (err, data) => resCallback(res, err, data, "Some error occurred while getaccounts."));
  }
  
};

exports.suspend = (req, res) => {
  
  if (!req.session.email) {
    res.status(400).send({
      message: "No session!"
    });
  }

  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }
 
  Account.suspend(req.body, (err, data) => resCallback(res, err, data, "Some error occurred while suspend."));
};

exports.delete = (req, res) => {
  
  if (!req.session.email) {
    res.status(400).send({
      message: "No session!"
    });
  }

  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }
 
  Account.delete(req.body, (err, data) => resCallback(res, err, data, "Some error occurred while delete."));
};

exports.checkrole = (req, res) => {
  
  if (!req.session.email) {
    res.status(400).send({
      message: "No session!"
    });
  }
 
  Account.checkrole(req.session.email, (err, data) => resCallback(res, err, data, "Some error occurred while checkrole."));
};
