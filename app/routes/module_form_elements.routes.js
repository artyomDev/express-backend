module.exports = app => {
    const formelementsModule = require("../controllers/module_form_elements.controller.js");
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
    

    //  create a new formelements
    app.post("/module_form_elements", cpUpload, formelementsModule.create);
    
    //Retrieve formelements

    app.get("/module_form_elements", formelementsModule.getAll);

    //Retrieve a single formelements with formelementsId

    app.get("/module_form_elements/:formElementsId", formelementsModule.get);
    // app.get("/slideshow/detail/:slideShowId", formelementsModule.getDetail);

    // Update a formelements with formelementsId
    
    app.put("/module_form_elements/:formElementsId", cpUpload, formelementsModule.update);

    // Delete a formelements with formelementsId

    app.post("/module_form_elements/delete/:formElementsId", formelementsModule.delete);
   
    // Delete All MultiColumnss
   
    app.post("/module_form_elements/delete", formelementsModule.deleteAll);
}