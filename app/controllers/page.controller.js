const Page = require("../models/page.model.js");

const sqldb = require("../models/db.js");

const resCallback = (res, err, data, defaultErrMessage = null) => {
  if (err) {
    if (err.kind === "not_found") {
      res.status(404).send({
        message: `Not found 'page'`
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

// Create and Save a new Page
exports.create = (req, res) => {
  // Validate request
  if (!req.body) {
    res.send({
      message: "Content can not be empty!"
    });
  }
 
  // Save Page in the database
  Page.create(new Page(req.body), (err, data) => resCallback(res, err, data, "Some error occurred while creating the 'page'."));
};

// Retrieve Pages from the database.
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
    Page.getAll(req.body.filter, req.body.sorting, req.body.paging,
      (err, data) => resCallback(res, err, data, "Some error occurred while retrieving 'page's.")
    );
  } 
  
};

// Retrieve Page Slugs from the database.
exports.getAllSlugs = (req, res) => {
  Page.getAllSlugs((err, data) => resCallback(res, err, data, "Some error occurred while retrieving 'page's.")
  );
};

// Retrieve Pages Length from the database.
exports.getLength = (req, res) => {
  Page.getLength(req.body.filter, (err, data) =>  resCallback(res, err, data, "Some error occurred while retrieving 'page' length."));
};

// Find a single Page with a pageId
exports.get = (req, res) => {
  Page.getById(req.params.pageId, (err, data) => resCallback(res, err, data, "Error retrieving 'page' with pageId " + req.params.pageId));
};

// Find a single Page Detail with a pageId
exports.getDetail = (req, res) => {
  Page.getDetailById(req.params.pageId, (err, data) => resCallback(res, err, data, "Error retrieving 'page' with pageId " + req.params.pageId));
};

// Find a single Page Detail with a pageId
exports.getDetailBySlug = (req, res) => {
  Page.getDetailBySlug(req.body.slug, (err, data) => resCallback(res, err, data, "Error retrieving 'page' with pageId " + req.params.pageId));
};

// Update a Page identified by the pageId in the request
exports.update = (req, res) => {
  // Validate Request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  Page.updateById(req.params.pageId, new Page(req.body), 
    (err, data) => resCallback(res, err, data, "Error updating 'page' with pageId " + req.params.pageId)
  );
};

// Delete a Page with the specified pageId in the request
exports.delete = (req, res) => {
  Page.remove(req.params.pageId, (err, data) => resCallback(res, err, data, "Could not delete 'page' with pageId " + req.params.pageId));
};

// Delete Pages from the database.
exports.deleteAll = (req, res) => {
  Page.removeAll(req.body.filter, req.body.ids, (err, data) => resCallback(res, err, data, "Some error occurred while removing 'pages's."));
};