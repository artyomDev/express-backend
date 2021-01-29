const FormDataModule = require("../models/module_form_data.model.js");

const resCallback = (res, err, data, defaultErrMessage = null) => {
  if (err) {
    if (err.kind === "not_found") {
      res.status(404).send({
        message: `Not found 'module_data_send'`
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

// Create and Save a new FormBuilderGroup
exports.create = (req, res) => {
  // Validate request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  // Save FormBuilderGroup in the database
  FormDataModule.create(req.body, (err, data) => resCallback(res, err, data, "Some error occurred while creating the 'module_data_send'."));
};

// Retrieve FormBuilderGroups from the database.
exports.getAll = (req, res) => {
  FormDataModule.getAll(req.body, (err, data) => resCallback(res, err, data, "Some error occurred while retrieving 'module_data_send'.")
  );
};

exports.getById = (req, res) => {
  FormDataModule.getById(req.body.id, (err, data) => resCallback(res, err, data, "Some error occurred while retrieving 'get_form_data_by_id'.")
  );
};

// Delete FormElementsGroups from the database.
exports.deleteAll = (req, res) => {
  FormDataModule.removeAll(req.body.filter, req.body.ids, (err, data) => resCallback(res, err, data, "Some error occurred while removing 'module_form_datas's."));
};
