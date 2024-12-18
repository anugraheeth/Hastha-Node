const path = require("path");
const request = (app, con, conn) => {
  app.get("/", (req, res) => {
    res.sendFile(path.join(__dirname, "../login.html"));
  });

  app.post("/", (req, res) => {
    var user = req.body.your_name;
    var pass = req.body.your_pass;
    const sql = `select * from user_info WHERE username='$username' AND password='$password'`;
    con.query(sql, (error, result) => {
      if (error) throw error;
      else return res.redirect(`/dashboard`);
    });
  });

  app.get("/dashboard", (req, res) => {
    const queries = [
      `SELECT COUNT(*) as total FROM per_details`,
      `SELECT COUNT(*) as total FROM res_details`,
      `SELECT COUNT(*) as total FROM non_res`,
      `SELECT COUNT(*) as total FROM per_details WHERE (DATEDIFF(SYSDATE(), dob)/365)>60 AND gender IN ('male', 'Male')`,
      `SELECT COUNT(*) as total FROM per_details WHERE (DATEDIFF(SYSDATE(), dob)/365)>60 AND gender IN ('female', 'Female')`,
      `SELECT COUNT(*) as total FROM per_details WHERE (DATEDIFF(SYSDATE(), dob)/365)>60 AND gender='transgender'`,
      `SELECT COUNT(*) as total FROM per_details WHERE (DATEDIFF(SYSDATE(), dob)/365)>60`,
      `SELECT COUNT(*) as total FROM per_details WHERE current_edu!='nil' AND gender='male'`,
      `SELECT COUNT(*) as total FROM per_details WHERE current_edu!='nil' AND gender='female'`,
      `SELECT COUNT(*) as total FROM per_details WHERE current_edu!='nil' AND gender='transgender'`,
      `SELECT COUNT(*) as total FROM per_details WHERE current_edu!='nil'`,
      `SELECT COUNT(*) as total FROM per_details WHERE marital='widower' AND gender='male'`,
      `SELECT COUNT(*) as total FROM per_details WHERE marital='widow' AND gender='female'`,
      `SELECT COUNT(*) as total FROM per_details WHERE marital='widow' AND gender='transgender'`,
      `SELECT COUNT(*) as total FROM per_details WHERE marital IN ('widower', 'widow')`,
      `SELECT COUNT(*) as total FROM per_details WHERE job_sec='government' AND gender='male'`,
      `SELECT COUNT(*) as total FROM per_details WHERE job_sec='government' AND gender='female'`,
      `SELECT COUNT(*) as total FROM per_details WHERE job_sec='government' AND gender='transgender'`,
      `SELECT COUNT(*) as total FROM per_details WHERE job_sec='government' AND gender IN ('male', 'female')`,
    ];

    // Execute Queries in Parallel
    Promise.all(
      queries.map(
        (sql) =>
          new Promise((resolve, reject) => {
            con.query(sql, (error, result) => {
              if (error) reject(error);
              else resolve(result[0].total);
            });
          })
      )
    )
      .then((results) => {
        return res.json({
          total: results[0],
          total1: results[1],
          total2: results[2],
          total3: results[3],
          total4: results[4],
          total5: results[5],
          total6: results[6],
          total7: results[7],
          total8: results[8],
          total9: results[9],
          total11: results[10],
          total12: results[11],
          total13: results[12],
          total14: results[13],
          total15: results[14],
          total16: results[15],
          total17: results[16],
          total18: results[17],
          total19: results[18],
        });
      })
      .catch((error) => {
        console.error("Query Error:", error);
        res.status(500).json({ error: "Database query failed" });
      });
  });

  app.get("/resdetail", (req, res) => {
    res.sendFile(__dirname + "/hastha-main/residential.html");
  });

  app.get("/viewres", (req, res) => {
    var sql = "SELECT * FROM res_details";
    con.query(sql, (error, result) => {
      if (error) throw error;
      else return res.json({result})
    });
  });

  app.get("/resfi", (req, res) => {
    var sql = "";
    var sql = "SELECT DISTINCT(gender) FROM per_details";
    con.query(sql, (error, result) => {
      if (error) throw error;
      else return res.json({result})
    });
  });

  var result1;

  app.post("/resfi", (req, res) => {
    let query = `
               SELECT * FROM per_details
               INNER JOIN res_details ON per_details.uid = res_details.uid
               WHERE per_details.id > 0
           `;
    let conditions = [];

    // Age filtering
    //if (req.body.minimum_age && req.body.maximum_age) {
    //  conditions.push(`(DATEDIFF(SYSDATE(), dob) / 365) BETWEEN 0 AND 100`);
    //}

    // Gender filtering
    if (req.body.gender) {
      const genderFilter = con.escape(req.body.gender);
      conditions.push(`gender IN (${genderFilter})`);
    }

    if (req.body.head) {
      const headFilter = con.escape(req.body.head);
      conditions.push(`head=${headFilter}`);
    }

    if (req.body.income_belo) {
      const income_belo_filter = con.escape(req.body.income_belo);
      conditions.push(`per_details.income< ${income_belo_filter}`);
    }
    if (req.body.income_abov) {
      const income_abov_filter = con.escape(req.body.income_abov);
      conditions.push(`per_details.income > ${income_abov_filter}`);
    }
    if (req.body.income_betw) {
      conditions.push(
        `100000 < per_details.income AND per_details.income < 500000`
      );
    }
    if (req.body.income_betw2) {
      conditions.push(
        `500000 < per_details.income AND per_details.income < 1000000`
      );
    }
    if (req.body.marital) {
      const marital_filter = con.escape(req.body.marital);
      conditions.push(`marital IN  (${marital_filter})`);
    }
    if (req.body.education) {
      const edu_filter = con.escape(req.body.education);
      conditions.push(`education IN (${edu_filter})`);
    }
    if (req.body.sector) {
      const sector_filter = con.escape(req.body.sector);
      conditions.push(`job_sec IN (${sector_filter})`);
    }
    if (req.body.blood) {
      const blood_filter = con.escape(req.body.blood);
      conditions.push(`blood_group IN (${blood_filter})`);
    }

    if (req.body.x_ser) {
      const x_ser_filter = con.escape(req.body.x_ser);
      conditions.push(`ex_serv IN (${x_ser_filter})`);
    }

    if (req.body.bp) {
      const bp_filter = con.escape(req.body.bp);
      conditions.push(`bp IN (${bp_filter})`);
    }

    if (req.body.sugar) {
      const sugar_filter = con.escape(req.body.sugar);
      conditions.push(`sugar IN (${sugar_filter})`);
    }

    if (req.body.bedridden) {
      const bedridden_filter = con.escape(req.body.bedridden);
      conditions.push(`bedridden IN (${bedridden_filter})`);
    }

    if (req.body.cancer) {
      const cancer_filter = con.escape(req.body, cancer);
      conditions.push(`cancer IN (${cancer_filter})`);
    }

    if (req.body.pension) {
      const pension_filter = con.escape(req.body.pension);
      conditions.push(`pension_avl IN (${pension_filter})`);
    }

    if (conditions.length > 0) {
      query += " AND " + conditions.join(" AND ");
    }
    console.log(query);
    con.query(query, (error, results) => {
      if (error) throw error;
      result1 = results;
      req.session.query = query; // Store query in session
      return res.json({results})
    });
  });

  //commercial=====================================

  app.get("/commercial", (req, res) => {
    res.sendFile(__dirname + "/hastha-main/commercial.html");
  });

  app.get("/viewcommercial", (req, res) => {
    var sql =
      "SELECT * FROM commerical_building INNER JOIN non_res ON commerical_building.nid=non_res.nid";
    conn.query(sql, (error, result) => {
      if (error) throw error;
      else return res.render(__dirname + "/hastha-main/viewcom", { result });
    });
  });

  app.get("/comfi", (req, res) => {
    res.render(__dirname + "/hastha-main/filterAdvcom");
  });

  app.post("/comfi", (req, res) => {
    let query = `SELECT * FROM commerical_building INNER JOIN non_res ON commerical_building.nid = non_res.nid  WHERE id>0`;
    let conditions = [];

    if (req.body.type) {
      const typefilter = conn.escape(req.body.type);
      conditions.push(`type_of_businnes IN (${typefilter})`);
    }

    if (req.body.license) {
      const licensefilter = conn.escape(req.body.license);
      conditions.push(`commerical_building.liscense IN (${licensefilter})`);
    }

    if (req.body.cctv) {
      const cctvfilter = conn.escape(req.body.cctv);
      conditions.push(`cctv_avl IN (${cctvfilter})`);
    }

    if (req.body.emergency) {
      const emerfilter = conn.escape(req.body.emergency);
      conditions.push(`commerical_building.emergency_ss IN (${emerfilter})`);
    }

    if (conditions.length > 0) {
      query += " AND " + conditions.join(" AND ");
    }

    console.log(query);
    conn.query(query, (error, results) => {
      if (error) throw error;
      req.session.query = query; // Store query in session
      return res.json({results})
    });
  });

  //hosp===========================

  app.get("/viewhos", (req, res) => {
    var sql =
      "SELECT * FROM hospital INNER JOIN non_res ON hospital.nid=non_res.nid";
    conn.query(sql, (error, result) => {
      if (error) throw error;
      else return res.render(__dirname + "/hastha-main/viewhosp", { result });
    });
  });

  app.get("/viewedu", (req, res) => {
    var sql =
      "SELECT * FROM educational INNER JOIN non_res ON educational.nid=non_res.nid";
    conn.query(sql, (error, result) => {
      if (error) throw error;
      else return res.render(__dirname + "/hastha-main/view_edu", { result });
    });
  });

  app.get("/viewindus", (req, res) => {
    var sql =
      "SELECT * FROM industry INNER JOIN non_res ON industry.nid=non_res.nid";
    conn.query(sql, (error, result) => {
      if (error) throw error;
      else
        return res.render(__dirname + "/hastha-main/viewindustry", { result });
    });
  });

  app.get("/viewrelig", (req, res) => {
    var sql =
      "SELECT * FROM religious INNER JOIN non_res ON religious.nid=non_res.nid";
    conn.query(sql, (error, result) => {
      if (error) throw error;
      else
        return res.render(__dirname + "/hastha-main/viewreligious", { result });
    });
  });

  app.get("/info", (req, res) => {
    return res.render(__dirname + "/hastha-main/info");
  });

  app.get("/datas", (req, res) => {
    const adhaar = req.query.adhaar;
    const conditions = [];
    const values = [];

    // Example attributes, ensure to enclose column names with spaces in backticks
    const attributes = [
      "`Name`",
      "`DOB`",
      "`Gender`",
      "`BloodGroup`",
      "`Relationnship with Family Head`",
      "`House Number`",
      "`Marital Status`",
      "`Phone Number`",
      "`Email`",
      "`Religion`",
      "`Caste`",
      "`Category`",
      "`Current Education Details`",
      "`Highest Education Details`",
      "`Education Specification`",
      "`Occupation`",
      "`Job Sector`",
      "`Anual Income`",
      "`Voters ID Number`",
      "`AadharNumber`",
      "`PAN Number`",
      "`Bank Account Availability`",
      "`Computer Knowledge`",
      "`Ex-Service`",
      "`Insurance Availibile`",
      "`Pension Available`",
      "`Type of Pension`",
      "`Residing IN`",
      "`Health Details`",
      "`Differently Abeled`",
    ];

    // Construct conditions for each attribute
    attributes.forEach((attr) => {
      conditions.push(`${attr} = ?`);
      values.push(adhaar);
    });

    // Join the conditions with OR
    const whereClause = conditions.join(" OR ");
    const sql = `SELECT * FROM content WHERE ${whereClause}`;

    con.query(sql, values, (error, result) => {
      if (error) throw error;
      return res.render(__dirname + "/dash", { info: result });
    });
  });
};
module.exports = { request };
