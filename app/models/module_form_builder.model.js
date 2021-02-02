const sql = require("./db.js");
const CommonModel = require("./common.model.js");

// constructor
const FormBuilderModule = function(formBuilderGroup) {
  this.internalName = formBuilderGroup.internalName;
  this.label = formBuilderGroup.label;
  this.tickBox = formBuilderGroup.tickBox;
  this.hFont = formBuilderGroup.hFont;
  this.hFontSize = formBuilderGroup.hFontSize;
  this.hFontColor = formBuilderGroup.hFontColor;
  this.spacing = formBuilderGroup.spacing;
  this.formDesign = formBuilderGroup.formDesign;
  this.formDesignColor = formBuilderGroup.formDesignColor;
  this.labelPlacement = formBuilderGroup.labelPlacement;
  this.lFont = formBuilderGroup.lFont;
  this.lFontSize = formBuilderGroup.lFontSize;
  this.lFontColor = formBuilderGroup.lFontColor;
  this.googleRecapture = formBuilderGroup.googleRecapture;
  this.emailAdress = formBuilderGroup.emailAdress;
  this.submitButtonText = formBuilderGroup.submitButtonText;
  this.submitButtonStyle = formBuilderGroup.submitButtonStyle;
  this.forwardingUrl = formBuilderGroup.forwardingUrl;
  this.setting = CommonModel.customJsonParse(formBuilderGroup.setting);
  this.boxes = CommonModel.customJsonParse(formBuilderGroup.boxes);
};



FormBuilderModule.create = async (newformBuilderGroup, result) => {
  try {
    const [res, fields] = await sql.promise().query(
      
      "INSERT INTO module_form_builder SET internalName = ?, settingId = ?, label = ?, tickBox = ?, hFont = ?, hFontSize = ?, hFontColor = ?, spacing = ?, formDesign = ?, formDesignColor = ?, labelPlacement = ?, lFont = ?, lFontSize = ?, lFontColor = ?, googleRecapture = ?, emailAdress = ?, submitButtonText = ?, submitButtonStyle = ?, forwardingUrl = ?, createdAt = NOW(), updatedAt = NOW()", 
      [newformBuilderGroup.internalName, newformBuilderGroup.setting ? newformBuilderGroup.setting.id : null, newformBuilderGroup.label, newformBuilderGroup.tickBox, newformBuilderGroup.hFont, newformBuilderGroup.hFontSize, newformBuilderGroup.hFontColor, newformBuilderGroup.spacing, newformBuilderGroup.formDesign, newformBuilderGroup.formDesignColor, newformBuilderGroup.labelPlacement, newformBuilderGroup.lFont, newformBuilderGroup.lFontSize, newformBuilderGroup.lFontColor, newformBuilderGroup.googleRecapture, newformBuilderGroup.emailAdress, newformBuilderGroup.submitButtonText, newformBuilderGroup.submitButtonStyle, newformBuilderGroup.forwardingUrl]
    );
    

    if (newformBuilderGroup.boxes && newformBuilderGroup.boxes.length > 0) {
      for (let i = 0; i < newformBuilderGroup.boxes.length; i++ ) {
        const [res1, fields1] = await sql.promise().query(
          "INSERT INTO module_form_builder_box SET formBuilderId = ?, moduleName = ?, moduleId = ?, createdAt = NOW(), updatedAt = NOW()", 
          [res.insertId, newformBuilderGroup.boxes[i].moduleName, newformBuilderGroup.boxes[i].moduleId]
        );
      }
    }
    
    result(null, { formBuilderId: res.insertId, id: res.insertId, ...newformBuilderGroup });
  } catch (err) {
    result(err, null);
  };
};

FormBuilderModule.getById = async (formBuilderId, result) => {
  try {
    const [res, fields] = await sql.promise().query(`SELECT * FROM module_form_builder WHERE formBuilderId = ${formBuilderId}`);
    
    if (res.length === 0) {
      throw { kind: "not_found" };
    }

    const [res1, fields1] = await sql.promise().query(`SELECT * FROM module_form_builder_box WHERE formBuilderId = ${formBuilderId}`);  
    const settingContent = await CommonModel.getSimpleContentById('module_section_setting', res[0].settingId);
    const boxes = [];
    for(let i = 0; i < res1.length; i++) {
      const moduleContent = await CommonModel.getSimpleContentById(res1[i].moduleName, res1[i].moduleId);

      boxes.push({
        ...res1[i],
        module: moduleContent,
      });
    }
    const formBuilderGroup = {
      ...res[0],
      setting: settingContent,
      boxes: boxes,
    };
    
    // console.log("Found 'module_form_builder': ", formBuilderGroup);
    result(null, formBuilderGroup);
  } catch (err) {
    // console.log("error: ", err);
    result(err, null);
  }
};

FormBuilderModule.getDetailById = async (formBuilderId, result) => {
  try {
    const formBuilderGroup = await this.getDetailContentById(formBuilderId);
    result(null, formBuilderGroup);
  } catch (err) {
    result(err, null);
  }
};

FormBuilderModule.getSimpleContentById = async (formBuilderId) => {
  if (formBuilderId) {
    try {
      const [res, fields] = await sql.promise().query(`SELECT internalName FROM module_form_builder WHERE formBuilderId = ${formBuilderId}`);
      if (res.length > 0) {
        return {
          id: formBuilderId,
          internalName: res[0].internalName
        };
      }
    } catch (err) {
      return null;
    }
  }
  
  return null;
};

FormBuilderModule.getDetailContentById = async (formBuilderId) => {
  if (formBuilderId) {
    try {
      const [res, fields] = await sql.promise().query(`SELECT * FROM module_form_builder WHERE formBuilderId = ${formBuilderId}`);
      if (res.length > 0) {
        const settingContent = await CommonModel.getDetailContentById('module_section_setting', res[0].settingId);
        const [res1, fields1] = await sql.promise().query(`SELECT * FROM module_form_builder_box WHERE formBuilderId = ${formBuilderId}`);
        const boxes = [];
        for(let i = 0; i < res1.length; i++) {
          const moduleContent = await CommonModel.getDetailContentById(res1[i].moduleName, res1[i].moduleId);
          boxes.push({
            ...res1[i],
            module: moduleContent,
          });
        }
        const formBuilderGroup = {
          ...res[0],
          setting: settingContent,
          boxes: boxes,
        };
        return formBuilderGroup;
      }
    } catch (err) {
      return null;
    }
  }
  return null;
};

FormBuilderModule.getAll = async (filter, sorting, paging, result) => {
  try {
    const {whereStr, orderStr, pagingStr} = getWhereOrderLimitStr(filter, sorting, paging);
    const [res, fields] = await sql.promise().query(`SELECT *, formBuilderId as id FROM module_form_builder ${whereStr} ${orderStr} ${pagingStr}`);
    result(null, res);
  } catch (err) {
    result(err, null);
    return;
  }
};

FormBuilderModule.getLength = async (filter, result) => {
  try {
    const { whereStr } = getWhereOrderLimitStr(filter);
    const [res, fields] = await sql.promise().query(`SELECT COUNT(*) as cnt FROM module_form_builder ${whereStr}`);
    // console.log("'module_form_builder' length: ", res[0].cnt);
    result(null, {length: res[0].cnt});
  } catch (err) {
    // console.log("error: ", err);
    result(err, null);
    return;
  }
};

FormBuilderModule.updateById = async (formBuilderId, formBuilderGroup, result) => {
  try {
    const [res, fields] = await sql.promise().query(
      "UPDATE module_form_builder SET internalName = ?, settingId = ?, label = ?, tickBox = ?, hFont = ?, hFontSize = ?, hFontColor = ?, spacing = ?, formDesign = ?, formDesignColor = ?, labelPlacement = ?, lFont = ?, lFontSize = ?, lFontColor = ?, googleRecapture = ?, emailAdress = ?, submitButtonText = ?, submitButtonStyle = ?, forwardingUrl = ?,  updatedAt = NOW() WHERE formBuilderId = ?",
      [formBuilderGroup.internalName, formBuilderGroup.setting ? formBuilderGroup.setting.id : null, formBuilderGroup.label, formBuilderGroup.tickBox, formBuilderGroup.hFont, formBuilderGroup.hFontSize, formBuilderGroup.hFontColor, formBuilderGroup.spacing, formBuilderGroup.formDesign, formBuilderGroup.formDesignColor, formBuilderGroup.labelPlacement, formBuilderGroup.lFont, formBuilderGroup.lFontSize, formBuilderGroup.lFontColor, formBuilderGroup.googleRecapture, formBuilderGroup.emailAdress, formBuilderGroup.submitButtonText, formBuilderGroup.submitButtonStyle, formBuilderGroup.forwardingUrl, formBuilderId]
    );

    if (res.affectedRows == 0) {
      throw { kind: "not_found" };
    }

    await sql.promise().query("DELETE FROM module_form_builder_box WHERE formBuilderId = ?", formBuilderId);

    if (formBuilderGroup.boxes && formBuilderGroup.boxes.length > 0) {
      for (let i = 0; i < formBuilderGroup.boxes.length; i++ ) {
        const [res1, fields1] = await sql.promise().query(
          "INSERT INTO module_form_builder_box SET formBuilderId = ?, moduleName = ?, moduleId = ?, createdAt = NOW(), updatedAt = NOW()", 
          [formBuilderId, formBuilderGroup.boxes[i].moduleName, formBuilderGroup.boxes[i].moduleId]
        );
        // console.log("Created 'module_form_builder': ", { formBuilderId: res1.insertId, ...formBuilderGroup.boxes[i] });
      }
    }

    // console.log("Updated 'module_form_builder': ", { formBuilderId: formBuilderId, ...formBuilderGroup });
    result(null, { formBuilderId: formBuilderId, id: formBuilderId, ...formBuilderGroup });
  } catch (err) {
    // console.log("error: ", err);
    result(err, null);
  }
};

// FormBuilderModule.remove = async (formBuilderId, result) => {
//   try {
//     const [res, fields] = await sql.promise().query("DELETE FROM module_form_builder WHERE formBuilderId = ?", formBuilderId);

//     if (res.affectedRows == 0) {
//       throw { kind: "not_found" };
//     }

//     await sql.promise().query("DELETE FROM module_form_builder_box WHERE formBuilderId = ?", formBuilderId);

//     // console.log("Deleted 'module_form_builder' with 'formBuilderId': ", formBuilderId);
//     result(null, { message: `'module_form_builder' was deleted successfully!` });
//   } catch (err) {
//     // console.log("error: ", err);
//     result(err, null);
//   }
// };

FormBuilderModule.remove = async (formBuilderId, result) => {
  try {
    const [res, fields] = await sql.promise().query("DELETE FROM module_form_builder WHERE formBuilderId = ?", formBuilderId);
    if (res.affectedRows == 0) {
      throw { kind: "not_found" };
    }

    await sql.promise().query("DELETE FROM module_form_builder_box WHERE formBuilderId = ?", formBuilderId);

    // console.log("Deleted 'module_form_elements' with 'formElementsId': ", formElementsId);
    result(null, { message: `'module_form_elements' was deleted successfully!` });
  } catch (err) {
    // console.log("error: ", err);
    result(err, null);
  }
};


FormBuilderModule.removeAll = async (filter, formBuilderIds, result) => {
  try {
    if (!formBuilderIds) {
      formBuilderIds = [];
    }
    if (filter) {
      const { whereStr } = getWhereOrderLimitStr(filter);

      if (whereStr !== '') {
        const [res, fields] = await sql.promise().query(`SELECT formBuilderId FROM module_form_builder ${whereStr}`);
        res.forEach(formBuilderGroup => {
          formBuilderIds.push(formBuilderGroup.formBuilderId);
        })
      }
    }
    
    let inStr = '';
    if (formBuilderIds.length > 0) {
      inStr = ` WHERE formBuilderId in (${formBuilderIds.join(', ')}) `;
    }

    if (inStr !== '') {
      await sql.promise().query(`DELETE FROM module_form_builder ${inStr}`);
      const [res1, fields1] = await sql.promise().query(`DELETE FROM module_form_builder_box ${inStr}`);
    } else {
    }
    
    result(null, { message: `'module_form_builder's were deleted successfully! Deleted ids: ${formBuilderIds.join(', ')}` });
  } catch (err) {
    // console.log("error: ", err);
    result(err, null);
  }
};

const getWhereOrderLimitStr = (filter, sorting = null, paging = null) => {
  const whereClause = [];

  if (filter) {
    if (filter.internalName) {
      whereClause.push(`(internalName like '%${filter.internalName}%')`);
    }

    if (filter.title) {
      whereClause.push(`(title like '%${filter.title}%')`);
    }

    if (filter.subhead) {
      whereClause.push(`(description like '%${filter.subhead}%')`);
    }

    if (filter.description) {
      whereClause.push(`(description like '%${filter.description}%')`);
    }
  }

  const whereStr = (whereClause.length > 0 ? 'WHERE ' : '') + whereClause.join(' AND ');

  let orderStr = "ORDER BY ";
  if (sorting) {
    orderStr += `${sorting.orderBy} ${sorting.order}`;
  } else {
    orderStr += `updatedAt DESC`;
  }

  let pagingStr = '';
  if (paging) {
    pagingStr = `LIMIT ${paging.number ? (paging.number * paging.size) + ',' : ''} ${paging.size}`;
  }

  return {whereStr, orderStr, pagingStr};
};

module.exports = FormBuilderModule;
