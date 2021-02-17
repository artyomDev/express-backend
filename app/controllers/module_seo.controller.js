const SeoModule = require("../models/module_seo.model.js");

const sqldb = require("../models/db.js");

const resCallback = (res, err, data, defaultErrMessage = null) => {
  if (err) {
    if (err.kind === "not_found") {
      res.status(404).send({
        message: `Not found 'module_seo'`
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

// Create and Save a new Seo
exports.create = (req, res) => {
  // Validate request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  // Save Seo in the database
  SeoModule.create(new SeoModule(req.body), (err, data) => resCallback(res, err, data, "Some error occurred while creating the 'module_seo'."));
};

// Retrieve Seos from the database.
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
  SeoModule.getAll(req.body.filter, req.body.sorting, req.body.paging,
    (err, data) => resCallback(res, err, data, "Some error occurred while retrieving 'module_seo's.")
  );
  }
};

// Retrieve Seos Length from the database.
exports.getLength = (req, res) => {
  SeoModule.getLength(req.body.filter, (err, data) =>  resCallback(res, err, data, "Some error occurred while retrieving 'module_seo' length."));
};

// Find a single Seo with a seoId
exports.get = (req, res) => {
  SeoModule.getById(req.params.seoId, (err, data) => resCallback(res, err, data, "Error retrieving 'module_seo' with seoId " + req.params.seoId));
};

// Find a single Seo Detail with a seoId
exports.getDetail = (req, res) => {
  SeoModule.getDetailById(req.params.seoId, (err, data) => resCallback(res, err, data, "Error retrieving 'module_seo' with seoId " + req.params.seoId));
};

// Update a Seo identified by the seoId in the request
exports.update = (req, res) => {
  // Validate Request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  SeoModule.updateById(req.params.seoId, new SeoModule(req.body),
    (err, data) => resCallback(res, err, data, "Error updating 'module_seo' with seoId " + req.params.seoId)
  );
};

// Delete a Seo with the specified seoId in the request
exports.delete = (req, res) => {
  SeoModule.remove(req.params.seoId, (err, data) => resCallback(res, err, data, "Could not delete 'module_seo' with seoId " + req.params.seoId));
};

// Delete Seos from the database.
exports.deleteAll = (req, res) => {
  SeoModule.removeAll(req.body.filter, req.body.ids, (err, data) => resCallback(res, err, data, "Some error occurred while removing 'module_seo's."));
};