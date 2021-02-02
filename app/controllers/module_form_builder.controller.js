const FormBuilderModule = require("../models/module_form_builder.model.js");

const resCallback = (res, err, data, defaultErrMessage = null) => {
  if (err) {
    if (err.kind === "not_found") {
      res.status(404).send({
        message: `Not found 'module_form_builder'`
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
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  // Save FormBuilderGroup in the database
  FormBuilderModule.create(new FormBuilderModule({...req.body, icon: req.files.icon}), (err, data) => resCallback(res, err, data, "Some error occurred while creating the 'module_form_builder'."));
};

// Retrieve FormBuilderGroups from the database.
exports.getAll = (req, res) => {
  FormBuilderModule.getAll(req.body.filter, req.body.sorting, req.body.paging,
    (err, data) => resCallback(res, err, data, "Some error occurred while retrieving 'module_form_builder'.")
  );
};

// Retrieve FormBuilderGroups Length from the database.
exports.getLength = (req, res) => {
  FormBuilderModule.getLength(req.body.filter, (err, data) =>  resCallback(res, err, data, "Some error occurred while retrieving 'module_form_builder' length."));
};

// Find a single FormBuilderGroup with a formBuilderId
exports.get = (req, res) => {
  FormBuilderModule.getById(req.params.formBuilderId, (err, data) => resCallback(res, err, data, "Error retrieving 'module_form_builder' with formBuilderId " + req.params.formBuilderId));
};

// Find a single FormBuilderGroup Detail with a formBuilderId
exports.getDetail = (req, res) => {
  FormBuilderModule.getDetailById(req.params.formBuilderId, (err, data) => resCallback(res, err, data, "Error retrieving 'module_form_builder' with formBuilderId " + req.params.formBuilderId));
};

// Update a FormBuilderGroup identified by the formBuilderId in the request
exports.update = (req, res) => {
  // Validate Request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  FormBuilderModule.updateById(req.params.formBuilderId, new FormBuilderModule({...req.body, icon: req.files.icon}), 
    (err, data) => resCallback(res, err, data, "Error updating 'module_form_builder' with formBuilderId " + req.params.formBuilderId)
  );
};

// Delete a FormBuilderGroup with the specified formBuilderId in the request
exports.delete = (req, res) => {
  FormBuilderModule.remove(req.params.formBuilderId, (err, data) => resCallback(res, err, data, "Could not delete 'module_form_builder' with formBuilderId " + req.params.formBuilderId));
};

// Delete FormBuilderGroups from the database.
exports.deleteAll = (req, res) => {
  FormBuilderModule.removeAll(req.body.filter, req.body.ids, (err, data) => resCallback(res, err, data, "Some error occurred while removing 'module_form_builder's."));
};

