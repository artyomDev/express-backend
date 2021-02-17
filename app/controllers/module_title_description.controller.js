const TitleDescriptionModule = require("../models/module_title_description.model.js");

const sqldb = require("../models/db.js");

const resCallback = (res, err, data, defaultErrMessage = null) => {
  if (err) {
    if (err.kind === "not_found") {
      res.status(404).send({
        message: `Not found 'module_title_description'`
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

// Create and Save a new TitleDescription
exports.create = (req, res) => {
  // Validate request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  // Save TitleDescription in the database
  TitleDescriptionModule.create(new TitleDescriptionModule(req.body), (err, data) => resCallback(res, err, data, "Some error occurred while creating the 'module_title_description'."));
};

// Retrieve TitleDescriptions from the database.
exports.getAll = (req, res) => {
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
    TitleDescriptionModule.getAll(req.body.filter, req.body.sorting, req.body.paging,
      (err, data) => resCallback(res, err, data, "Some error occurred while retrieving 'module_title_description's.")
    );
  }
};

// Retrieve TitleDescriptions Length from the database.
exports.getLength = (req, res) => {
  TitleDescriptionModule.getLength(req.body.filter, (err, data) =>  resCallback(res, err, data, "Some error occurred while retrieving 'module_title_description' length."));
};

// Find a single TitleDescription with a titleDescriptionId
exports.get = (req, res) => {
  TitleDescriptionModule.getById(req.params.titleDescriptionId, (err, data) => resCallback(res, err, data, "Error retrieving 'module_title_description' with titleDescriptionId " + req.params.titleDescriptionId));
};

// Find a single TitleDescription Detail with a titleDescriptionId
exports.getDetail = (req, res) => {
  TitleDescriptionModule.getDetailById(req.params.titleDescriptionId, (err, data) => resCallback(res, err, data, "Error retrieving 'module_title_description' with titleDescriptionId " + req.params.titleDescriptionId));
};

// Update a TitleDescription identified by the titleDescriptionId in the request
exports.update = (req, res) => {
  // Validate Request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  TitleDescriptionModule.updateById(req.params.titleDescriptionId, new TitleDescriptionModule(req.body), 
    (err, data) => resCallback(res, err, data, "Error updating 'module_title_description' with titleDescriptionId " + req.params.titleDescriptionId)
  );
};

// Delete a TitleDescription with the specified titleDescriptionId in the request
exports.delete = (req, res) => {
  TitleDescriptionModule.remove(req.params.titleDescriptionId, (err, data) => resCallback(res, err, data, "Could not delete 'module_title_description' with titleDescriptionId " + req.params.titleDescriptionId));
};

// Delete TitleDescriptions from the database.
exports.deleteAll = (req, res) => {
  TitleDescriptionModule.removeAll(req.body.filter, req.body.ids, (err, data) => resCallback(res, err, data, "Some error occurred while removing 'module_title_description's."));
};