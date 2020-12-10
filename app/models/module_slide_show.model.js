const sql = require("./db.js");
const CommonModel = require("./common.model.js");

// constructor
const SlideShowModule = function(slideShowGroup) {
  this.internalName = slideShowGroup.internalName;
  this.slideType = slideShowGroup.slideType;
  this.navigationIcon = slideShowGroup.navigationIcon;
  this.navigationIconWidth = slideShowGroup.navigationIconWidth;
  this.navigationIconFromTop = slideShowGroup.navigationIconFromTop;
  this.navigationIconLeftRight = slideShowGroup.navigationIconLeftRight;
  this.paginationIcon = slideShowGroup.paginationIcon;
  this.paginationIconWidth = slideShowGroup.paginationIconWidth;
  this.paginationIconTop = slideShowGroup.paginationIconTop;
  this.animationType = slideShowGroup.animationType;
  this.autoPlayState = slideShowGroup.autoPlayState;
  this.autoPlayDuration = slideShowGroup.autoPlayDuration;
  this.multiImageWidth = slideShowGroup.multiImageWidth;
  this.gapBetweenImages = slideShowGroup.gapBetweenImages;
  this.setting = CommonModel.customJsonParse(slideShowGroup.setting);
  this.boxes = CommonModel.customJsonParse(slideShowGroup.boxes);
};

SlideShowModule.create = async (newSlideShowGroup, result) => {
  try {
    const [res, fields] = await sql.promise().query(
      "INSERT INTO module_slide_show SET internalName = ?, settingId = ?, slideType = ?, navigationIcon = ?, navigationIconWidth = ?, navigationIconFromTop = ?, navigationIconLeftRight = ?, paginationIcon = ?, paginationIconWidth = ?, paginationIconTop = ?, animationType = ?, autoPlayState = ?, autoPlayDuration = ?, multiImageWidth = ?, gapBetweenImages = ?, createdAt = NOW(), updatedAt = NOW()", 
      [newSlideShowGroup.internalName, newSlideShowGroup.setting ? newSlideShowGroup.setting.id : null, newSlideShowGroup.slideType, newSlideShowGroup.navigationIcon, newSlideShowGroup.navigationIconWidth, newSlideShowGroup.navigationIconFromTop, newSlideShowGroup.navigationIconLeftRight, newSlideShowGroup.paginationIcon, newSlideShowGroup.paginationIconWidth, newSlideShowGroup.paginationIconTop, newSlideShowGroup.animationType, newSlideShowGroup.autoPlayState, newSlideShowGroup.autoPlayDuration, newSlideShowGroup.multiImageWidth, newSlideShowGroup.gapBetweenImages]
    );

    if (newSlideShowGroup.boxes && newSlideShowGroup.boxes.length > 0) {
      for (let i = 0; i < newSlideShowGroup.boxes.length; i++ ) {
        const [res1, fields1] = await sql.promise().query(
          "INSERT INTO module_slide_show_box SET slideShowId = ?, moduleName = ?, moduleId = ?, createdAt = NOW(), updatedAt = NOW()", 
          [res.insertId, newSlideShowGroup.boxes[i].moduleName, newSlideShowGroup.boxes[i].moduleId]
        );
      }
    }

    result(null, { slideShowId: res.insertId, id: res.insertId, ...newSlideShowGroup });
  } catch (err) {
    result(err, null);
  };
};

SlideShowModule.getById = async (slideShowId, result) => {
  try {
    const [res, fields] = await sql.promise().query(`SELECT * FROM module_slide_show WHERE slideShowId = ${slideShowId}`);
    
    if (res.length === 0) {
      throw { kind: "not_found" };
    }

    const [res1, fields1] = await sql.promise().query(`SELECT * FROM module_slide_show_box WHERE slideShowId = ${slideShowId}`);  
    const settingContent = await CommonModel.getSimpleContentById('module_section_setting', res[0].settingId);
    const boxes = [];
    for(let i = 0; i < res1.length; i++) {
      const moduleContent = await CommonModel.getSimpleContentById(res1[i].moduleName, res1[i].moduleId);

      boxes.push({
        ...res1[i],
        module: moduleContent,
      });
    }
    const slideShowGroup = {
      ...res[0],
      setting: settingContent,
      boxes: boxes,
    };
    
    // console.log("Found 'module_slide_show': ", slideShowGroup);
    result(null, slideShowGroup);
  } catch (err) {
    // console.log("error: ", err);
    result(err, null);
  }
};

SlideShowModule.getDetailById = async (slideShowId, result) => {
  try {
    const slideShowGroup = await this.getDetailContentById(slideShowId);
    result(null, slideShowGroup);
  } catch (err) {
    result(err, null);
  }
};

SlideShowModule.getSimpleContentById = async (slideShowId) => {
  if (slideShowId) {
    try {
      const [res, fields] = await sql.promise().query(`SELECT internalName FROM module_slide_show WHERE slideShowId = ${slideShowId}`);
      if (res.length > 0) {
        return {
          id: slideShowId,
          internalName: res[0].internalName
        };
      }
    } catch (err) {
      return null;
    }
  }
  
  return null;
};

SlideShowModule.getDetailContentById = async (slideShowId) => {
  if (slideShowId) {
    try {
      const [res, fields] = await sql.promise().query(`SELECT * FROM module_slide_show WHERE slideShowId = ${slideShowId}`);
      if (res.length > 0) {
        const settingContent = await CommonModel.getDetailContentById('module_section_setting', res[0].settingId);
        const [res1, fields1] = await sql.promise().query(`SELECT * FROM module_slide_show_box WHERE slideShowId = ${slideShowId}`);
        const boxes = [];
        for(let i = 0; i < res1.length; i++) {
          const moduleContent = await CommonModel.getDetailContentById(res1[i].moduleName, res1[i].moduleId);
          boxes.push({
            ...res1[i],
            module: moduleContent,
          });
        }
        const slideShowGroup = {
          ...res[0],
          setting: settingContent,
          boxes: boxes,
        };
        return slideShowGroup;
      }
    } catch (err) {
      return null;
    }
  }
  return null;
};

SlideShowModule.getAll = async (filter, sorting, paging, result) => {
  try {
    const {whereStr, orderStr, pagingStr} = getWhereOrderLimitStr(filter, sorting, paging);
    const [res, fields] = await sql.promise().query(`SELECT *, slideShowId as id FROM module_slide_show ${whereStr} ${orderStr} ${pagingStr}`);
    result(null, res);
  } catch (err) {
    result(err, null);
    return;
  }
};

SlideShowModule.getLength = async (filter, result) => {
  try {
    const { whereStr } = getWhereOrderLimitStr(filter);
    const [res, fields] = await sql.promise().query(`SELECT COUNT(*) as cnt FROM module_slide_show ${whereStr}`);
    // console.log("'module_slide_show' length: ", res[0].cnt);
    result(null, {length: res[0].cnt});
  } catch (err) {
    // console.log("error: ", err);
    result(err, null);
    return;
  }
};

SlideShowModule.updateById = async (slideShowId, slideShowGroup, result) => {
  try {
    const [res, fields] = await sql.promise().query(
      "UPDATE module_slide_show SET internalName = ?, settingId = ?, slideType = ?, navigationIcon = ?, navigationIconWidth = ?, navigationIconFromTop = ?, navigationIconLeftRight = ?, paginationIcon = ?, paginationIconWidth = ?, paginationIconTop = ?, animationType = ?, autoPlayState = ?, autoPlayDuration = ?, multiImageWidth = ?, gapBetweenImages = ?, updatedAt = NOW() WHERE slideShowId = ?",
      [slideShowGroup.internalName, slideShowGroup.setting ? slideShowGroup.setting.id : null, slideShowGroup.slideType, slideShowGroup.navigationIcon, slideShowGroup.navigationIconWidth, slideShowGroup.navigationIconFromTop, slideShowGroup.navigationIconLeftRight, slideShowGroup.paginationIcon, slideShowGroup.paginationIconWidth, slideShowGroup.paginationIconTop, slideShowGroup.animationType, slideShowGroup.autoPlayState, slideShowGroup.autoPlayDuration, slideShowGroup.multiImageWidth, slideShowGroup.gapBetweenImages, slideShowId]
    );

    if (res.affectedRows == 0) {
      throw { kind: "not_found" };
    }

    await sql.promise().query("DELETE FROM module_slide_show_box WHERE slideShowId = ?", slideShowId);

    if (slideShowGroup.boxes && slideShowGroup.boxes.length > 0) {
      for (let i = 0; i < slideShowGroup.boxes.length; i++ ) {
        const [res1, fields1] = await sql.promise().query(
          "INSERT INTO module_slide_show_box SET slideShowId = ?, moduleName = ?, moduleId = ?, createdAt = NOW(), updatedAt = NOW()", 
          [slideShowId, slideShowGroup.boxes[i].moduleName, slideShowGroup.boxes[i].moduleId]
        );
        // console.log("Created 'module_slide_show_box': ", { slideShowId: res1.insertId, ...slideShowGroup.boxes[i] });
      }
    }

    // console.log("Updated 'module_slide_show': ", { slideShowId: slideShowId, ...slideShowGroup });
    result(null, { slideShowId: slideShowId, id: slideShowId, ...slideShowGroup });
  } catch (err) {
    // console.log("error: ", err);
    result(err, null);
  }
};

SlideShowModule.remove = async (slideShowId, result) => {
  try {
    const [res, fields] = await sql.promise().query("DELETE FROM module_slide_show WHERE slideShowId = ?", slideShowId);

    if (res.affectedRows == 0) {
      throw { kind: "not_found" };
    }

    await sql.promise().query("DELETE FROM module_slide_show_box WHERE slideShowId = ?", slideShowId);

    // console.log("Deleted 'module_slide_show' with 'slideShowId': ", slideShowId);
    result(null, { message: `'module_slide_show' was deleted successfully!` });
  } catch (err) {
    // console.log("error: ", err);
    result(err, null);
  }
};

SlideShowModule.removeAll = async (filter, slideShowIds, result) => {
  try {
    if (!slideShowIds) {
      slideShowIds = [];
    }

    if (filter) {
      const { whereStr } = getWhereOrderLimitStr(filter);

      if (whereStr !== '') {
        const [res, fields] = await sql.promise().query(`SELECT slideShowId FROM module_slide_show ${whereStr}`);
        res.forEach(slideShowGroup => {
          slideShowIds.push(slideShowGroup.slideShowId);
        })
      }
    }
    
    let inStr = '';
    if (slideShowIds.length > 0) {
      inStr = ` WHERE slideShowId in (${slideShowIds.join(', ')}) `;
    }

    if (inStr !== '') {
      await sql.promise().query(`DELETE FROM module_slide_show_box ${inStr}`);
      const [res1, fields1] = await sql.promise().query(`DELETE FROM module_slide_show ${inStr}`);
      // console.log(`Deleted ${res1.affectedRows} 'module_slide_show's`);
      // console.log(`Deleted 'module_slide_show' ids: ${slideShowIds.join(', ')}`);
    } else {
      // console.log(`Deleted 0 'module_slide_show'`);
    }
    
    result(null, { message: `'module_slide_show's were deleted successfully! Deleted ids: ${slideShowIds.join(', ')}` });
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

module.exports = SlideShowModule;
