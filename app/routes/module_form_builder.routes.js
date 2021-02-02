module.exports = app => {
    const formbuilderModule = require("../controllers/module_form_builder.controller.js");
    var multer = require('multer');
    var storage = multer.diskStorage({
      destination: function (req, file, cb) {
        cb(null, 'upload');
      },
      filename: function (req, file, cb) {
        cb(null, `website-image--${Date.now()}.${file.originalname.split('.').pop()}`);
      }
    });
  
    var upload = multer({ storage: storage });
    var cpUpload = upload.fields([{ name: "icon", maxCount: 1}, { name: "multiimage", maxCount: 50}]);
    

    //  create a new formbuilder
    app.post("/module_form_builder", cpUpload, formbuilderModule.create);
    
    //Retrieve formbuilder

    app.get("/module_form_builder", formbuilderModule.getAll);

    //Retrieve a single formbuilder with formbuilderId

    app.get("/module_form_builder/:formBuilderId", formbuilderModule.get);
    // app.get("/slideshow/detail/:slideShowId", formbuilderModule.getDetail);

    // Update a formbuilder with formbuilderId
    
    app.put("/module_form_builder/:formBuilderId", cpUpload, formbuilderModule.update);

    // Delete a formbuilder with formbuilderId

    app.post("/module_form_builder/delete/:formBuilderId", formbuilderModule.delete);
   
    // Delete All MultiColumnss
   
    app.post("/module_form_builder/delete", formbuilderModule.deleteAll);
}