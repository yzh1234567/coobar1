const pool=require("../mysql.js");
const express=require("express");
// 使用express模块创建路由
// var router=express.Router();
var router=express.Router();

// 功能1 登录路由
   router.post("/login",(req,res)=>{
       var uname=req.body.uname;
       var upwd=req.body.upwd;
    //    验证用户名，密码;
    var regUname=/^\w{6,12}$/i;
    var regUpwd=/^\w{8,20}$/i;
    if(!uname){
        res.send({code:-1,msg:"用户名不能为空"});
        return;
    };
    if(!regUname.test(uname)){
        res.send({code:-2,msg:"用户名格式不正确"});
        return;
    };
    if(!upwd){
        res.send({code:-3,msg:"密码不能为空"});
        return;
    };
    if(!regUpwd(upwd)){
        res.send({code:-4,msg:"密码格式不正确"});
        return;
    };
    // sql语句;
    var sql="select uid from coobar_user where uname=? or phone=? or email=? and upwd=md5(?)";
    pool.query(sql,[uname,uname,uname,upwd],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            req.session.uid=result[0].uid;
            res.send({
                code:1,msg:"登录成功"
            });
        }else {
            res.send({
                code:-5,msg:"用户名或密码有误"
            })
        };
    })
   });

// 功能2,获取轮播广告照片
router.get("/getImg",(req,res)=>{
    var sql="select id,img,src from coobar_adImg";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({code:1,data:result});
        }
    })
});
// 功能3 获取首页1楼数据
router.get("/getIndexF1",(req,res)=>{
    var sql="select id ,pid,img_src,old_price,href,new_price,title,count from coobar_index_f1_product order by seatNumber asc";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({code:1,data:result})
        }
    });
});
    // 功能4 获取首页2楼数据
router.get("/getIndexF2",(req,res)=>{
    var sql="select id ,pid,img_src,old_price,href,new_price,title from coobar_index_f2_product order by seatNumber asc";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({code:1,data:result})
        }
    });
});
    // 功能5 获取首页3楼数据
router.get("/getIndexF3",(req,res)=>{
    var num=1,arr=[];
    var sql="select id ,pid,img_src,old_price,href,new_price,title from coobar_index_f3_product where floor=1 order by seatNumber asc";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            num+=50;
            arr.push(result);
            if(num>100){
                res.send({code:1,data:arr})
            }
        }
    });
    // 获取三楼二层信息
    var sql="select id ,pid,img_src,old_price,href,new_price,title from coobar_index_f3_product where floor=2 order by seatNumber asc ";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            num+=50;
            arr.push(result);
            if(num>100){
                res.send({code:1,data:arr})
            }
        }
    });
});

// 导出路由
module.exports=router;
