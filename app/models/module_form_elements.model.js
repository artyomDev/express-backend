const sql = require("./db.js");
const CommonModel = require("./common.model.js");

// constructor
const FormElementsModule = function(formElementsGroup) {
  this.internalName = formElementsGroup.internalName;
  this.label = formElementsGroup.label;
  this.columnelementType = formElementsGroup.columnelementType;
  this.defaultValue = formElementsGroup.defaultValue;
  this.replaceFolder = formElementsGroup.replaceFolder;
  this.setting = CommonModel.customJsonParse(formElementsGroup.setting);
  this.boxes = CommonModel.customJsonParse(formElementsGroup.boxes);
};

FormElementsModule.create = async (newformElementsGroup, result) => {
  try {
    const [res, fields] = await sql.promise().query(
      
      "INSERT INTO module_form_elements SET internalName = ?, settingId = ?, label = ?, columnelementType = ?, defaultValue = ?, replaceFolder = ?, createdAt = NOW(), updatedAt = NOW()", 
      [newformElementsGroup.internalName, newformElementsGroup.setting ? newformElementsGroup.setting.id : null, newformElementsGroup.label, newformElementsGroup.columnelementType, newformElementsGroup.defaultValue, newformElementsGroup.replaceFolder]
    );

    result(null, { formElementsId: res.insertId, id: res.insertId, ...newformElementsGroup });
  } catch (err) {
    result(err, null);
  };
};

FormElementsModule.getById = async (formElementsId, result) => {
  try {
    const [res, fields] = await sql.promise().query(`SELECT * FROM module_form_elements WHERE formElementsId = ${formElementsId}`);
    
    if (res.length === 0) {
      throw { kind: "not_found" };
    }

    const settingContent = await CommonModel.getSimpleContentById('module_section_setting', res[0].settingId);
    const formElementsGroup = {
      ...res[0],
      setting: settingContent,
    };
    
    result(null, formElementsGroup);
  } catch (err) {
    result(err, null);
  }
};

FormElementsModule.getDetailById = async (formElementsId, result) => {
  try {
    const formElementsGroup = await this.getDetailContentById(formElementsId);
    result(null, formElementsGroup);
  } catch (err) {
    result(err, null);
  }
};

FormElementsModule.getSimpleContentById = async (formElementsId) => {
  if (formElementsId) {
    try {
      const [res, fields] = await sql.promise().query(`SELECT internalName FROM module_form_elements WHERE formElementsId = ${formElementsId}`);
      if (res.length > 0) {
        return {
          id: formElementsId,
          internalName: res[0].internalName
        };
      }
    } catch (err) {
      return null;
    }
  }
  
  return null;
};

FormElementsModule.getDetailContentById = async (formElementsId) => {
  if (formElementsId) {
    try {
      const [res, fields] = await sql.promise().query(`SELECT * FROM module_form_elements WHERE formElementsId = ${formElementsId}`);
      if (res.length > 0) {
        const settingContent = await CommonModel.getDetailContentById('module_section_setting', res[0].settingId);
        const boxes = [];
        const formElementsGroup = {
          ...res[0],
          setting: settingContent,
          boxes: boxes,
        };
        return formElementsGroup;
      }
    } catch (err) {
      return null;
    }
  }
  return null;
};

FormElementsModule.getAll = async (filter, sorting, paging, result) => {
  try {
    const {whereStr, orderStr, pagingStr} = getWhereOrderLimitStr(filter, sorting, paging);
    const [res, fields] = await sql.promise().query(`SELECT *, formElementsId as id FROM module_form_elements ${whereStr} ${orderStr} ${pagingStr}`);
    result(null, res);
  } catch (err) {
    result(err, null);
    return;
  }
};

FormElementsModule.getLength = async (filter, result) => {
  try {
    const { whereStr } = getWhereOrderLimitStr(filter);
    const [res, fields] = await sql.promise().query(`SELECT COUNT(*) as cnt FROM module_form_elements ${whereStr}`);
    result(null, {length: res[0].cnt});
  } catch (err) {
    result(err, null);
    return;
  }
};

FormElementsModule.updateById = async (formElementsId, formElementsGroup, result) => {
  try {
    const [res, fields] = await sql.promise().query(
      "UPDATE module_form_elements SET internalName = ?, settingId = ?, label = ?, columnelementType = ?, defaultValue = ?, replaceFolder = ?, updatedAt = NOW() WHERE formElementsId = ?",
      [formElementsGroup.internalName, formElementsGroup.setting ? formElementsGroup.setting.id : null, formElementsGroup.label, formElementsGroup.columnelementType, formElementsGroup.defaultValue, formElementsGroup.replaceFolder, formElementsId]
    );

    if (res.affectedRows == 0) {
      throw { kind: "not_found" };
    }
    result(null, { formElementsId: formElementsId, id: formElementsId, ...formElementsGroup });
  } catch (err) {
    // console.log("error: ", err);
    result(err, null);
  }
};

FormElementsModule.remove = async (formElementsId, result) => {
  try {
    const [res, fields] = await sql.promise().query("DELETE FROM module_form_elements WHERE formElementsId = ?", formElementsId);

    if (res.affectedRows == 0) {
      throw { kind: "not_found" };
    }

    result(null, { message: `'module_form_elements' was deleted successfully!` });
  } catch (err) {
    result(err, null);
  }
};

FormElementsModule.removeAll = async (filter, formElementsIds, result) => {
  try {
    if (!formElementsIds) {
      formElementsIds = [];
    }

    if (filter) {
      const { whereStr } = getWhereOrderLimitStr(filter);

      if (whereStr !== '') {
        const [res, fields] = await sql.promise().query(`SELECT formElementsId FROM module_form_elements ${whereStr}`);
        res.forEach(formElementsGroup => {
          formElementsIds.push(formElementsGroup.formElementsId);
        })
      }
    }
    
    let inStr = '';
    if (formElementsIds.length > 0) {
      inStr = ` WHERE formElementsId in (${formElementsIds.join(', ')}) `;
    }

    if (inStr !== '') {
      const [res1, fields1] = await sql.promise().query(`DELETE FROM module_form_elements ${inStr}`);
    } else {
    }
    
    result(null, { message: `'module_form_elements's were deleted successfully! Deleted ids: ${formElementsIds.join(', ')}` });
  } catch (err) {
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

module.exports = FormElementsModule;
