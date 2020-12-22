module.exports = app => {
    const formModule = require("../controllers/module_forms.controller.js");
    

    //  create a new form
    app.post("/module_forms", formModule.create);
    
    //Retrieve forms

    app.get("/module_forms", formModule.getAll);

    //Retrieve a single form with formId

    app.get("/module_forms/:formId", formModule.get);

    // Update a form with formId
    
    app.put("/module_forms/:formId", cpUpload, formModule.update);

    // Delete a form with formId

    app.post("/module_forms/delete/:formId", formModule.delete);
   
    // Delete All MultiColumnss
   
    app.post("/module_forms/delete", formModule.deleteAll);


   

}