const sql = require("./db.js");

// constructor
const FormDataModule = function(FormData) {
  this.formBuilderId = FormData.formBuilderId;
  this.formName = FormData.formName;
  this.formDataKey = FormData.formDataKey;
  this.formDataValue = FormData.formDataValue;
};

const mailjet = require ('node-mailjet').connect('adf394f400e6114affa42d80bf837b90', '82052e2543d560ebab1273b2f50d5f88');
function requests (Admin_email){ mailjet
.post("send", {'version': 'v3.1'})
.request({
  "Messages":[
    {
      "From": {
        "Email": "manager@emoceanstudios.com.au",
        "Name": "HANK ADMIN"
      },
      "To": [
        {
          "Email": Admin_email,
          "Name": "Dear Client!"
        }
      ],
      "Subject": "You have received a new Form Submission",
      "TextPart": "",
      "HTMLPart": "<h3>Nice work, your Web Form has a new Submission. View your <a href='http://34.83.103.207:4000' target='_blank'>New Form Submission</a> details and send the user an email to let them know you have received their details.</h3><br/><h3>New Form Submissions mean people are noticing you.</h3><br/><h3>Keep up the good work.</h3><br/><h3>HANK.</h3>",
      "CustomID": "TaskID"
    }
  ]
});
};

FormDataModule.create = async (newFormData, result) => {
  let ndata1 = newFormData.data;
  let ndata = JSON.parse(ndata1);
  let currentDate =new Date();
  let formBuilderId = newFormData.formBuilderId; 

  try {
    for (let idx in ndata) {
      await sql.promise().query(      
        "INSERT INTO module_form_data SET formBuilderId=?, formName=?, formDataKey=?, formDataValue=?, createdAt=?", 
        [newFormData.formBuilderId, newFormData.formName, ndata[idx].label, ndata[idx].value, currentDate]
      );
    }    
    const [Admin_Email, fields] = await sql.promise().query(`SELECT emailAdress FROM module_form_builder WHERE formBuilderId = "${formBuilderId}"`);
    result(null, { createddate: currentDate, ...newFormData });

    requests(Admin_Email[0].emailAdress)
    .then((result) => {
        console.log(result.body);
    })
    .catch((err) => {
        console.log(err.statusCode);
    }); 
   
        
  } catch (err) {
    result(err, null);
  };

};

FormDataModule.getAll = async (req, result) => {
  try {
    const [res, fields] = await sql.promise().query(`SELECT formName, createdAt FROM module_form_data GROUP BY formName, createdAt DESC`);
    result(null, res);
  } catch (err) {
    result(err, null);
  }
};

FormDataModule.getById = async (id, result) => {
  try {
    const [res, fields] = await sql.promise().query(`SELECT * FROM module_form_data WHERE createdAt = "${id}"`);
    result(null, res);
  } catch (err) {
    result(err, null);
  }
};

FormDataModule.removeAll = async (filter, formDataIds, result) => {
  try {
    let whereQuery = [];
    for (let idx in formDataIds) {
      whereQuery.push('createdAt = "' + formDataIds[idx] + '"');
      console.log(whereQuery);
    }
    
    let inStr = whereQuery.join(" OR ");
    console.log(inStr);

    if (inStr !== '') {
      const [res1, fields1] = await sql.promise().query(`DELETE FROM module_form_data WHERE ${inStr}`);
    } else {
      console.log(`Deleted 0 'module_form_data'`);
    }
    
    result(null, { message: `'module_form_data's were deleted successfully! Deleted ids: ${formDataIds.join(', ')}` });
  } catch (err) {
    // console.log("error: ", err);
    result(err, null);
  }
};

module.exports = FormDataModule;
