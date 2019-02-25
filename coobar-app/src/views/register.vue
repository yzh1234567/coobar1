<template>
    <div class="app-register">
        <div class="register-step">
               <el-steps :active="active" finish-status="success">
                    <el-step title="步骤 1"></el-step>
                    <el-step title="步骤 2"></el-step>
                    <el-step title="步骤 3"></el-step>
               </el-steps>
               <div class="register">
                    <div v-show="active==0" class="register-item">
                               <el-row :gutter="20">
                                    <el-col :span="6">
                                        <div class="grid-content bg-purple">
                                            <span class="item item1">用户名</span>
                                        </div>
                                        </el-col>
                                    <el-col :span="8">
                                        <div class="grid-content bg-purple">
                                            <el-input
                                                placeholder="请输入用户名"
                                                v-model="uname" @focus="unameFocus" @blur="unameBlur"
                                                clearable>
                                            </el-input>
                                        </div>
                                    </el-col>
                                    <el-col :span="10">
                                        <div class="grid-content bg-purple">
                                            <span class="item item2" :class="item1Color">
                                                <i :class="item1Icon"></i>
                                                {{msg1}}
                                            </span>
                                        </div>
                                    </el-col>
                           </el-row> 
                            <el-row :gutter="20">
                                    <el-col :span="6">
                                        <div class="grid-content bg-purple">
                                            <span class="item item1">手机号码</span>
                                        </div>
                                        </el-col>
                                    <el-col :span="8">
                                        <div class="grid-content bg-purple">
                                            <el-input
                                                placeholder="请输入手机号码"
                                                v-model="phone" @focus="phoneFocus" @blur="phoneBlur"
                                                clearable>
                                            </el-input>
                                        </div>
                                    </el-col>
                                    <el-col :span="10">
                                        <div class="grid-content bg-purple">
                                            <span class="item item2" :class="item2Color">
                                                <i :class="item2Icon"></i>
                                                {{msg2}}
                                            </span>
                                        </div>
                                    </el-col>
                           </el-row>  
                    </div>
                    <div v-show="active==1" class="register-item">
                           <el-row :gutter="20">
                                <el-col :span="6">
                                    <div class="grid-content bg-purple">
                                         <span class="item item1">设置密码</span>
                                    </div>
                                    </el-col>
                                <el-col :span="8">
                                    <div class="grid-content bg-purple">
                                        <el-input
                                            placeholder="请输入密码"
                                            v-model="upwd" type="password"  @focus="upwdFocus" @blur="upwdBlur"
                                            clearable>
                                        </el-input>
                                    </div>
                                </el-col>
                                <el-col :span="10">
                                    <div class="grid-content bg-purple">
                                         <span class="item item2" :class="item3Color">
                                             <i :class="item3Icon"></i>
                                               {{msg3}}
                                         </span>
                                    </div>
                                </el-col>
                           </el-row> 
                             <el-row :gutter="20">
                                <el-col :span="6">
                                    <div class="grid-content bg-purple">
                                         <span class="item item1">确认密码</span>
                                    </div>
                                    </el-col>
                                <el-col :span="8">
                                    <div class="grid-content bg-purple">
                                        <el-input
                                            placeholder="请确认密码"
                                            v-model="upwd1" type="password"  @focus="upwd1Focus" @blur="upwd1Blur"
                                            clearable>
                                        </el-input>
                                    </div>
                                </el-col>
                                <el-col :span="10">
                                    <div class="grid-content bg-purple">
                                         <span class="item item2" :class="item4Color">
                                             <i :class="item4Icon"></i>
                                               {{msg4}}
                                         </span>
                                    </div>
                                </el-col>
                           </el-row>  
                    </div>
                    <div v-show="active==2" class="register-item">
                             <el-row :gutter="20">
                                <el-col :span="6">
                                    <div class="grid-content bg-purple">
                                         <button class="item item3" @click="getTest">点击获取验证码</button>
                                    </div>
                                    </el-col>
                                <el-col :span="4">
                                    <div class="grid-content bg-purple">
                                        <el-input
                                            placeholder="请输入验证码"
                                            v-model="test" type="text"  @blur="testBlur"
                                            clearable>
                                        </el-input>
                                    </div>
                                </el-col>
                                 <el-col :span="4">
                                    <div class="grid-content bg-purple">
                                        <el-input
                                            v-model="test1" type="text" 
                                            clearable>
                                        </el-input>
                                    </div>
                                </el-col>
                                <el-col :span="10">
                                    <div class="grid-content bg-purple">
                                         <span class="item item2" :class="item5Color">
                                             <i :class="item5Icon"></i>
                                               {{msg5}}
                                         </span>
                                    </div>
                                </el-col>
                           </el-row>    
                    </div>
                    <div v-show="active==3" class="register-item">
                        <div class="register-success">
                            <p class="success  success1">{{msg}}</P>
                            <p class="success  success2">
                                <span class="success-time">{{time}}</span>
                                {{msg6}}
                            </P>
                        </div> 
                    </div>
               </div>
               <button @click="next" class="btn" v-show="active<=2">下一步</button>
        </div>
    </div>
</template>

<script>
  export default {
    data() {
      return {
        active:0,
        uname:null,
        phone:null,
        upwd:null,
        upwd1:null,
        test:null,
        test1:null,
        msg:"",
        msg1:"",
        msg2:"",
        msg3:"",
        msg4:"",
        msg5:"",
        msg6:"",
        time:"",
        item1Color:"",
        item2Color:"",
        item3Color:"",
        item4Color:"",
        item5Color:"",
        "item1Icon":"",
        "item2Icon":"",
        "item3Icon":"",
        "item4Icon":"",
        "item5Icon":"",
        isRight1:false,
        isRight2:false,
      };
    },

    methods: {
        next() {
            if(this.isRight1&&this.isRight2){
                    this.isRight1=false;
                    this.isRight2=false;
                    this.active++ ;
                    if (this.active > 2) {
                        var  uname=this.uname;
                        var  upwd=this.upwd;
                        var phone=this.phone;
                        console.log(phone,upwd)
                        this.axios.post("http://coobar.applinzi.com/register","uname="+uname+"&upwd="+upwd+"&phone="+phone
                            ).then((res)=>{
                                if(res.data.code==1){
                                    this.msg=res.data.msg;
                                    this.time=5;
                                    this.msg6="s后返回主页";
                                    var goHome=setInterval(()=>{
                                        this.time--;
                                        if(this.time==0){
                                           this.$router.push("/");
                                           clearInterval(goHome);
                                        }
                                    },1000)
                                }else{
                                     this.msg=res.data.msg;
                                }
                            })
                    }
            } 
        },
        //获取验证码事件
        getTest(){
            this.test1=Math.floor(Math.random()*1000000);
        },
        //验证码失去焦点事件
        testBlur(){
            if(this.test==this.test1){
                 this.msg5="验证码正确";
                this.item5Color="color2";
                this.item5Icon="el-icon-success";
                this.isRight2=true;
                this.isRight1=true;
            }else{
                 this.msg5="验证码不正确";
                this.item5Color="color3";
                this.item5Icon="el-icon-error";
            }
        },
        //  用户名聚焦事件
        unameFocus(){
            this.msg1="用户名由6至12位数字、字母、符号、汉字组成";
            this.item1Color="color1";
            this.item1Icon="el-icon-info";
        },
        // 用户名失去焦点事件
        unameBlur(){
            var reg=/^[\w\u4e00-\u9fa5]{6,12}$/g;
            if(this.uname==undefined ||this.uname==null){
                this.msg1="用户名不能为空";
                this.item1Color="color3";
                this.item1Icon="el-icon-error";
            }else if(reg.test(this.uname)){
                this.msg1="用户名符合规则";
                this.item1Color="color2";
                this.item1Icon="el-icon-success";
                this.isRight1=true;
            }else{
                this.msg1="用户名格式不正确";
                this.item1Color="color3";
                this.item1Icon="el-icon-error";
            }
        },
                //  手机号码  聚焦事件
        phoneFocus(){
            this.msg2="手机号码由11位数字组成";
            this.item2Color="color1";
            this.item2Icon="el-icon-info";
        },
        // 手机号码失去焦点事件
        phoneBlur(){
            var reg=/^1[3-9][0-9]{9}$/g;
            if(this.phone==undefined ||this.phone==null){
                this.msg2="手机号码不能为空";
                this.item2Color="color3";
                this.item2Icon="el-icon-error";
            }else if(reg.test(this.phone)){
                this.msg2="手机号码符合规则";
                this.item2Color="color2";
                this.item2Icon="el-icon-success";
                this.isRight2=true;
            }else{
                this.msg2="手机号码格式不正确";
                this.item2Color="color3";
                this.item2Icon="el-icon-error";
            }
        },
        //密码聚焦事件
        upwdFocus(){
            this.msg3="密码由8至20位数字、字母、符号组成";
            this.item3Color="color1";
            this.item3Icon="el-icon-info";
        },
        // 密码失去焦点事件
        upwdBlur(){
            var reg=/^[\w.!@#$%?]{8,20}$/g;
            if(this.upwd==undefined ||this.upwd==null){
                this.msg3="密码不能为空";
                this.item3Color="color3";
                this.item3Icon="el-icon-error";
            }else if(reg.test(this.upwd)){
                this.msg3="密码正确";
                this.item3Color="color2";
                this.item3Icon="el-icon-success";
                this.isRight1=true;
            }else{
                this.msg3="密码不正确";
                this.item3Color="color3";
                this.item3Icon="el-icon-error";
            }
        },
        //确认密码聚焦事件
        upwd1Focus(){
            this.msg4="请重复确认密码";
            this.item4Color="color1";
            this.item4Icon="el-icon-info";
        },
        // 密码失去焦点事件
        upwd1Blur(){
            if(this.upwd1==this.upwd){
                  this.msg4="确认密码正确";
                this.item4Color="color2";
                this.item4Icon="el-icon-success";
                this.isRight2=true; 
            }else{
                this.msg4="确认密码不正确";
                this.item4Color="color3";
                this.item4Icon="el-icon-error";
            }
        },
    }  
  }
</script>

<style scoped lang="scss">
       $my_color:#f70738;
       $my_color1:#00c65d;
        *{
            box-sizing:border-box;
        }
       /* 修改步骤进度样式 */
       /* >>>.el-step__icon.is-text{
           border:2px solid #f70738;
       } */
      >>>div.el-step__title.is-process{
           color:$my_color;
      }
      .app-register{
          position: relative;
      }
       .register-step{
         width:800px;
          margin:10px auto;
          position:absolute;
          top:100px;left:400px;
      }
      .register-step>.btn{
          width:100px;height:40px;
          text-align: center;
          line-height: 40px;
          font-size:16px;
          position:absolute;
          top:400px;left:35%;
          border-radius:5px;
          background:#fff;
          border:1px solid #dcdfe6;
      }
      .register-step>.btn:focus{
          color: #409EFF;
          border: #c6e2ff;
          background: #ecf5ff;
      }
      /* .register-item>.items */
      .register-item{
          margin-top:100px;
      }
      .register-item>.items{
          display:flex;

      }
      .items>.item1{
          width:160px;
      }
      .items>.item3{
          width:200px;
      }
      .el-row{
          margin-bottom:20px;
      }
      .bg-purple .item{
          display:inline-block;
          width:100%;
          height:40px;
          line-height:40px;
          font-size:20px;
          user-select: none;
      }
      .bg-purple .item1{
        text-align:right;
      }
      .bg-purple .item3{
        text-align:center;
      }
      .bg-purple .item2{
        font-size:14px;
      }
      .bg-purple .color1{
          color:#f0aa09
      }
      .bg-purple .color2{
          color:$my_color1;
      }
      .bg-purple .color3{
          color:$my_color;
      }
      >>>.bg-purple .el-input--small .el-input__inner{
          height:40px;
          font-size:18px;
      }
      .register-success>.success{
          text-align:center;
      }
      .register-success>.success1{
          font-size:24px;
          color:$my_color;
      }
      .register-success>.success2{
          font-size:18px;
          margin-top:15px;
      }
      .register-success>.success2>.success-time{
         color:$my_color;
      }
</style>