const express = require("express");
const session = require('express-session');
const cookieParser = require('cookie-parser');
const bodyParser = require("body-parser");
const cors = require('cors');
require('dotenv').config();

const port = process.env.SERVER_PORT || 5000;

const app = express();

app.use(cors({ origin: [process.env.ADMIN, process.env.ADMIN1, process.env.FRONT, process.env.FRONT1, 'http://localhost:3003', 'http://localhost:3000'], credentials: true, methods: ['GET', 'PUT', 'POST', 'OPTIONS', 'DELETE'] }));

app.use(cookieParser());
app.use(session({secret: "Shh, its a secret!", resave: true, saveUninitialized: true}));

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

const sqldb = require("./app/models/db.js");

app.post('/login', function (req, res) {
  async function loginfunc(){
    if(req.body.email) {
      const loginok = await sqldb.promise().query(`SELECT * FROM user WHERE email = "${req.body.email}" AND password = "${req.body.password}" AND suspend = 0`);
      const loginsuspend = await sqldb.promise().query(`SELECT * FROM user WHERE email = "${req.body.email}" AND password = "${req.body.password}"`);
      if(loginok[0].length > 0) {
        sqldb.promise().query("UPDATE user SET rememberme = ?, updatedAt = NOW() WHERE email = ?", [req.body.rememberMe, req.body.email]);
        req.session.email = req.body.email;

        if (req.body.rememberMe)
          res.cookie('rememberMeEmail', req.body.email, {maxAge: 7*24*60*60*1000});
        else 
          res.cookie('rememberMeEmail', '');

        res.send('success');
      } else if(loginsuspend[0].length > 0) {
        req.session.email = '';
        res.send('suspend');
      } else {
        req.session.email = '';
        res.send('fail');
      }
    } else {    
      req.session.email = '';
      res.send('fail');
    }
  }
  
  loginfunc();
});

app.post('/forgotpassword', function(req, res){
  if(req.body.email) {
    sqldb.promise().query(`SELECT id FROM user WHERE email = "${req.body.email}"`).then(function(resp){
      if(resp[0].length > 0) {
        const mailjet = require ('node-mailjet').connect('adf394f400e6114affa42d80bf837b90', '82052e2543d560ebab1273b2f50d5f88');

        let rand = '';
        let characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
        let charactersLength = characters.length;
        let length = 15;
        for ( var i = 0; i < length; i++ ) {
          rand += characters.charAt(Math.floor(Math.random() * charactersLength));
        }

        mailjet.post("send", {'version': 'v3.1'}).request({
          "Messages":[
            {
              "From": {
                "Email": "manager@emoceanstudios.com.au",
                "Name": "Forgot Password"
              },
              "To": [
                {
                  "Email": req.body.email,
                  "Name": "Dear Client!"
                }
              ],
              "Subject": "[TEST] Did you forget Hank's Password?",
              "TextPart": "",
              "HTMLPart": "<div style='text-align: center'><img src='http://www.emoceanstudios.com.au/temp/hank-cms-logo.gif' style='width: 100px; margin: auto; display: block;' /><br/><img src='http://www.emoceanstudios.com.au/temp/hank-cms-forgot-password-illustration.jpg' style='width: 300px; margin: auto; display: block;' /><p><span style='font-size: 40px; font-weight: 800;'>Password issues?</span><br><span style='font-size: 24px; font-weight: 300;'>All good! let's get this fixed right now.</span></p><p><a href='http://admin.hankcms.com/Reset/" + resp[0][0].id + "/" + rand + "' target='_blank' style='padding: 10px 15px; display: inline-block; border-radius: 5px; background: #30e3ca; color: #ffffff; text-decoration: none;'>Reset My Password</a></p><h5>Not having password issues?<br/>Ignore this email and login as usual next time.</h5></div>",
              "CustomID": "TaskID"
            }
          ]
        }).then(function (result) {
          sqldb.promise().query("UPDATE user SET forgotpassword = ? WHERE email = ?", [rand, req.body.email]);
          res.send('success');
        }).catch(function (reason) {
          res.send('fail');
        });


      } else {
        res.send('fail');
      }
    });
  } else {
    res.send('fail');
  }
});

app.post('/resetpassword', function (req, res) {
  sqldb.promise().query(`SELECT * FROM user WHERE id = "${req.body.id}" AND forgotpassword = "${req.body.rand}"`).then(function(resp){
    if(resp[0].length > 0) {
      sqldb.promise().query("UPDATE user SET forgotpassword = ?, password =? WHERE id = ?", ['', req.body.password, req.body.id]);
      res.send('success');
    } else {
      res.send('fail');
    }
  });
});

app.post('/logout', function (req, res) {
  req.session.email = '';
  res.cookie('rememberMeEmail', '');
  res.send('logout');
});


app.use(express.static('upload'));

require("./app/routes/account.routes.js")(app);
require("./app/routes/page.routes.js")(app);
require("./app/routes/module_seo.routes.js")(app);
require("./app/routes/module_page_setting.routes.js")(app);
require("./app/routes/module_site_setting.routes.js")(app);
require("./app/routes/module_section_setting.routes.js")(app);
require("./app/routes/module_website_image.routes.js")(app);
require("./app/routes/module_multi_columns.routes.js")(app);
require("./app/routes/module_card.routes.js")(app);
require("./app/routes/module_button.routes.js")(app);
require("./app/routes/module_menu_group.routes.js")(app);
require("./app/routes/module_header.routes.js")(app);
require("./app/routes/module_slide_show.routes.js")(app);
require("./app/routes/module_form_elements.routes.js")(app);
require("./app/routes/module_form_builder.routes.js")(app);
require("./app/routes/module_form_data.routes.js")(app);


// set port, listen for requests
app.listen(port, () => {
  console.log(`Server is running on port ${port}.`);
});