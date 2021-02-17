const FormElementsModule = require("../models/module_form_elements.model.js");

const sqldb = require("../models/db.js");

const resCallback = (res, err, data, defaultErrMessage = null) => {
  if (err) {
    if (err.kind === "not_found") {
      res.status(404).send({
        message: `Not found 'module_form_elements'`
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

// Create and Save a new FormElementsGroup
exports.create = (req, res) => {
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  // Save FormElementsGroup in the database
  FormElementsModule.create(new FormElementsModule({...req.body, icon: req.files.icon}), (err, data) => resCallback(res, err, data, "Some error occurred while creating the 'module_form_elements'."));
};

// Retrieve FormElementsGroups from the database.
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
  FormElementsModule.getAll(req.body.filter, req.body.sorting, req.body.paging,
    (err, data) => resCallback(res, err, data, "Some error occurred while retrieving 'module_form_elements'.")
  );
  }
};

// Retrieve FormElementsGroups Length from the database.
exports.getLength = (req, res) => {
  FormElementsModule.getLength(req.body.filter, (err, data) =>  resCallback(res, err, data, "Some error occurred while retrieving 'module_form_elements' length."));
};

// Find a single FormElementsGroup with a formElementsId
exports.get = (req, res) => {
  FormElementsModule.getById(req.params.formElementsId, (err, data) => resCallback(res, err, data, "Error retrieving 'module_form_elements' with formElementsId " + req.params.formElementsId));
};

// Find a single FormElementsGroup Detail with a formElementsId
exports.getDetail = (req, res) => {
  FormElementsModule.getDetailById(req.params.formElementsId, (err, data) => resCallback(res, err, data, "Error retrieving 'module_form_elements' with formElementsId " + req.params.formElementsId));
};

// Update a FormElementsGroup identified by the formElementsId in the request
exports.update = (req, res) => {
  // Validate Request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  FormElementsModule.updateById(req.params.formElementsId, new FormElementsModule({...req.body, icon: req.files.icon}), 
    (err, data) => resCallback(res, err, data, "Error updating 'module_form_elements' with formElementsId " + req.params.formElementsId)
  );
};

// Delete a FormElementsGroup with the specified formElementsId in the request
exports.delete = (req, res) => {
  FormElementsModule.remove(req.params.formElementsId, (err, data) => resCallback(res, err, data, "Could not delete 'module_form_elements' with formElementsId " + req.params.formElementsId));
};

// Delete FormElementsGroups from the database.
exports.deleteAll = (req, res) => {
  FormElementsModule.removeAll(req.body.filter, req.body.ids, (err, data) => resCallback(res, err, data, "Some error occurred while removing 'module_form_elements's."));
};