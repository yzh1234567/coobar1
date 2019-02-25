const mysql=require("mysql");
var pool=mysql.createPool({
     host:"w.rdc.sae.sina.com.cn",
     port:3306,
     user:"5l4jmw1y3m",
     password:"03w3321whyky3ixkwzym3m4jwykw2x0z3wi43232",
     database:"app_coobar",
     connectionLimit:20,
});
module.exports=pool;