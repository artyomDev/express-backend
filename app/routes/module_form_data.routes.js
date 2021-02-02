module.exports = app => {
    const formdataModule = require("../controllers/module_form_data.controller.js");

    app.post("/form_data_send", formdataModule.create);

    app.get("/module_form_data", formdataModule.getAll);

    app.post("/get_form_data_by_id", formdataModule.getById);
    
    // Delete All MultiColumnss
   
    app.post("/module_form_data/delete", formdataModule.deleteAll);
}