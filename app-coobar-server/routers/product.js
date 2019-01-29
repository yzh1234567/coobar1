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
//功能6 获取产品列表并分页查询
     router.get("/products",(req,res)=>{
        
         var obj={code:1},progress=0;
        //1、  获取参数
          var pno=req.query.pno;
          var pageSize=req.query.pageSize;
          var kword=req.query.kwords;
          if(pno==undefined){
              pno=1
          }
          if(pageSize==undefined){
              pageSize=20
          }
        //2、 正则验证
        var reg=/^[0-9]{1,}$/;
            if(!reg.test(pno)){
                res.send({code:-1,msg:"页码格式不正确"});
                return;
            }else if(pno==0){
                 res.send({code:-2,msg:"页码初始值不能为0"});
                 return;
            }
            if(!reg.test(pageSize)){
                res.send({code:-3,msg:"页大小格式不正确"});
                return;
            }else if(pageSize==0){
                res.send({code:-4,msg:"页大小的值不能为0"});
                return;
            }
            // sql语句查询
          if(kword==undefined){
                  //查询总页码  
              var sql="select count(id) from coobar_products";
              pool.query(sql,(err,result)=>{
                  if(err) throw err;
                  if(result.length>0){
                      //  设置变量总页数
                      var pageCount=Math.ceil(result[0].count/pageSize);
                      progress+=50;
                      obj.pageCount=pageCount;
                      if(progress>=100){
                          res.send(obj)
                      }
                  }
              })
                // 查询当前页内容
                var sql1="select id,title,old_price,new_price,count,img_src,href from coobar_products limit ?,? ";
                 var offset=parseInt((pno-1)*pageSize);
                     pageSize=parseInt(pageSize);
                    pool.query(sql1,[offset,pageSize],(err,result)=>{
                        if(err) throw err;
                        if(result.length>0){
                            progress+=50;
                            obj.data=result;
                            if(progress>=100){
                                res.send(obj)
                            }
                        }
                    })
          }else{
                   kword=kword.split(" ");
                   var arr=kword.map(function(){ return " details like ? ";});
                   var str=arr.join(" and ");
                   //查询总页码  
                   var sql="select count(id) from coobar_products where "+str;
                   kword.forEach(function(value,i,arr){
                       kword[i]=`%${value}%`;
                   })
                   pool.query(sql,kword,(err,result)=>{
                       if(err) throw err;
                       if(result.length>0){
                           //  设置变量总页数
                           var pageCount=Math.ceil(result[0].count/pageSize);
                           progress+=50;
                           obj.pageCount=pageCount;
                           if(progress>=100){
                               res.send(obj)
                           }
                       }
                   })
                     // 查询当前页内容
                      var offset=parseInt((pno-1)*pageSize);
                          pageSize=parseInt(pageSize);
                          kword.push(offset);
                          kword.push(pageSize);
                      var sql1="select id,title,old_price,new_price,count,img_src,href from coobar_products where " +str + " limit ?,? ";
                         pool.query(sql1,kword,(err,result)=>{
                             if(err) throw err;
                             if(result.lengh>0){
                                 progress+=50;
                                 obj.data=result;
                                 if(progress>=100){
                                     res.send(obj)
                                 }
                             }
                         })
          }
     }) 
// 导出路由
module.exports=router;
