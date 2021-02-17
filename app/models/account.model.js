const e = require("express");
const sql = require("./db.js");

exports.create = async (email, obj, result) => {
  try {
    const checkrole = await sql.promise().query(`SELECT role FROM user WHERE email = "${email}"`);
    
    if(checkrole[0][0].role === 'Super Admin') {
      const [res, fields] = await sql.promise().query(
        "INSERT INTO user SET firstname = ?, lastname = ?, companyname = ?, position = ?, phone = ?, companyaddress = ?, city = ?, state = ?, postcode = ?, country = ?, industry = ?, howhear = ?, email = ?, role = ?, password = ?, rememberme = ?, forgotpassword = ?, suspend = ?, createdAt = NOW(), updatedAt = NOW()",
        [obj.firstname, obj.lastname, obj.companyname, obj.position, obj.phone, obj.companyaddress, obj.city, obj.state, obj.postcode, obj.country, obj.industry, obj.howhear, obj.email, obj.role? obj.role: 'Client', obj.password, 0, '', 0]
      );
      
      if (res.affectedRows == 0) {
        result(null, 'fail');
      } else {
        result(null, 'success');
      }
    } else {
      result(null, 'fail');
    }

    
  } catch (err) {
    result(err, null);
  };
};

exports.getprofile = async (email, result) => {
  try {
    const [res, fields] = await sql.promise().query(`SELECT * FROM user WHERE email = "${email}"`);
    result(null, res);
  } catch (err) {
    result(err, null);
  };
};

exports.updateprofile = async (obj, result) => {
  try {
    const [res, fields] = await sql.promise().query(
      "UPDATE user SET firstname = ?, lastname = ?, companyname = ?, position = ?, phone = ?, companyaddress = ?, city = ?, state = ?, postcode = ?, country = ?, industry = ?, howhear = ?, email = ?, role = ? WHERE id = ?",
      [obj.firstname, obj.lastname, obj.companyname, obj.position, obj.phone, obj.companyaddress, obj.city, obj.state, obj.postcode, obj.country, obj.industry, obj.howhear, obj.email, obj.role, obj.id]
    );

    if (res.affectedRows == 0) {
      result(null, 'fail');
    } else {
      result(null, 'success');
    }
    
  } catch (err) {
    result(err, null);
  };
};

exports.changepassword = async (obj, result) => {
  try {
    const [res, fields] = await sql.promise().query(
      "UPDATE user SET  password = ? WHERE id = ?",  [obj.password, obj.id]
    );

    if (res.affectedRows == 0) {
      result(null, 'fail');
    } else {
      result(null, 'success');
    }
    
  } catch (err) {
    result(err, null);
  };
};

exports.getaccounts = async (email, result) => {
  try {
    const checkrole = await sql.promise().query(`SELECT role FROM user WHERE email = "${email}"`);
    if(checkrole[0][0].role === 'Super Admin') {
      const [res, fields] = await sql.promise().query(`SELECT id, email, companyname, suspend, createdAt, updatedAt FROM user ORDER BY createdAt DESC`);
      result(null, res);
    } else {
      result(null, []);
    }
    
  } catch (err) {
    result(err, null);
  };
};

exports.getprofilebyid = async (obj, result) => {
  try {
    const [res, fields] = await sql.promise().query(`SELECT * FROM user WHERE id = "${obj.id}"`);
    result(null, res);
  } catch (err) {
    result(err, null);
  };
};

exports.suspend = async (obj, result) => {
  try {
    const [res, fields] = await sql.promise().query(
      "UPDATE user SET suspend = ? WHERE id = ?",
      [obj.suspend, obj.id]
    );

    if (res.affectedRows == 0) {
      result(null, 'fail');
    } else {
      result(null, 'success');
    }
    
  } catch (err) {
    result(err, null);
  };
};

exports.delete = async (obj, result) => {
  try {
    const [res, fields] = await sql.promise().query(
      `DELETE FROM user WHERE id = ${obj.id} AND email = "${obj.email}"`
    );

    if (res.affectedRows == 0) {
      result(null, 'fail');
    } else {
      result(null, 'success');
    }
    
  } catch (err) {
    result(err, null);
  };
};

exports.checkrole = async (email, result) => {
  try {
    const [res, fields] = await sql.promise().query(`SELECT role FROM user WHERE email = "${email}"`);
    result(null, res);    
  } catch (err) {
    result(err, null);
  };
};
