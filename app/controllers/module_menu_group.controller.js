const MenuGroupModule = require("../models/module_menu_group.model.js");

const sqldb = require("../models/db.js");

const resCallback = (res, err, data, defaultErrMessage = null) => {
  if (err) {
    if (err.kind === "not_found") {
      res.status(404).send({
        message: `Not found 'module_menu_group'`
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

// Create and Save a new MenuGroup
exports.create = (req, res) => {
  // Validate request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  // Save MenuGroup in the database
  MenuGroupModule.create(new MenuGroupModule({...req.body}), (err, data) => resCallback(res, err, data, "Some error occurred while creating the 'module_menu_group'."));
};

// Retrieve MenuGroups from the database.
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
  MenuGroupModule.getAll(req.body.filter, req.body.sorting, req.body.paging,
    (err, data) => resCallback(res, err, data, "Some error occurred while retrieving 'module_menu_group's.")
  );
  }
};

// Retrieve MenuGroups Length from the database.
exports.getLength = (req, res) => {
  MenuGroupModule.getLength(req.body.filter, (err, data) =>  resCallback(res, err, data, "Some error occurred while retrieving 'module_menu_group' length."));
};

// Find a single MenuGroup with a menuGroupId
exports.get = (req, res) => {
  MenuGroupModule.getById(req.params.menuGroupId, (err, data) => resCallback(res, err, data, "Error retrieving 'module_menu_group' with menuGroupId " + req.params.menuGroupId));
};

// Find a single MenuGroup Detail with a menuGroupId
exports.getDetail = (req, res) => {
  MenuGroupModule.getDetailById(req.params.menuGroupId, (err, data) => resCallback(res, err, data, "Error retrieving 'module_menu_group' with menuGroupId " + req.params.menuGroupId));
};

// Update a MenuGroup identified by the menuGroupId in the request
exports.update = (req, res) => {
  // Validate Request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  MenuGroupModule.updateById(req.params.menuGroupId, new MenuGroupModule({...req.body}), 
    (err, data) => resCallback(res, err, data, "Error updating 'module_menu_group' with menuGroupId " + req.params.menuGroupId)
  );
};

// Delete a MenuGroup with the specified menuGroupId in the request
exports.delete = (req, res) => {
  MenuGroupModule.remove(req.params.menuGroupId, (err, data) => resCallback(res, err, data, "Could not delete 'module_menu_group' with menuGroupId " + req.params.menuGroupId));
};

// Delete MenuGroups from the database.
exports.deleteAll = (req, res) => {
  MenuGroupModule.removeAll(req.body.filter, req.body.ids, (err, data) => resCallback(res, err, data, "Some error occurred while removing 'module_menu_group's."));
};