const SlideShowModule = require("../models/module_slide_show.model.js");

const resCallback = (res, err, data, defaultErrMessage = null) => {
  if (err) {
    if (err.kind === "not_found") {
      res.status(404).send({
        message: `Not found 'module_slide_show'`
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

// Create and Save a new SlideShowGroup
exports.create = (req, res) => {
  // Validate request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  // Save SlideShowGroup in the database
  SlideShowModule.create(new SlideShowModule({...req.body, icon: req.files.icon}), (err, data) => resCallback(res, err, data, "Some error occurred while creating the 'module_slide_show'."));
};

// Retrieve SlideShowGroups from the database.
exports.getAll = (req, res) => {
  SlideShowModule.getAll(req.body.filter, req.body.sorting, req.body.paging,
    (err, data) => resCallback(res, err, data, "Some error occurred while retrieving 'module_slide_show's.")
  );
};

// Retrieve SlideShowGroups Length from the database.
exports.getLength = (req, res) => {
  SlideShowModule.getLength(req.body.filter, (err, data) =>  resCallback(res, err, data, "Some error occurred while retrieving 'module_slide_show' length."));
};

// Find a single SlideShowGroup with a slideShowId
exports.get = (req, res) => {
  SlideShowModule.getById(req.params.slideShowId, (err, data) => resCallback(res, err, data, "Error retrieving 'module_slide_show' with slideShowId " + req.params.slideShowId));
};

// Find a single SlideShowGroup Detail with a slideShowId
exports.getDetail = (req, res) => {
  SlideShowModule.getDetailById(req.params.slideShowId, (err, data) => resCallback(res, err, data, "Error retrieving 'module_slide_show' with slideShowId " + req.params.slideShowId));
};

// Update a SlideShowGroup identified by the slideShowId in the request
exports.update = (req, res) => {
  // Validate Request
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  SlideShowModule.updateById(req.params.slideShowId, new SlideShowModule({...req.body, icon: req.files.icon}), 
    (err, data) => resCallback(res, err, data, "Error updating 'module_slide_show' with slideShowId " + req.params.slideShowId)
  );
};

// Delete a SlideShowGroup with the specified slideShowId in the request
exports.delete = (req, res) => {
  SlideShowModule.remove(req.params.slideShowId, (err, data) => resCallback(res, err, data, "Could not delete 'module_slide_show' with slideShowId " + req.params.slideShowId));
};

// Delete SlideShowGroups from the database.
exports.deleteAll = (req, res) => {
  SlideShowModule.removeAll(req.body.filter, req.body.ids, (err, data) => resCallback(res, err, data, "Some error occurred while removing 'module_slide_show's."));
};