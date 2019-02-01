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
                                                v-model="phone" 
                                                clearable>
                                            </el-input>
                                        </div>
                                    </el-col>
                                    <el-col :span="10">
                                        <div class="grid-content bg-purple">
                                            <span class="item item2" >
                                                <i class="el-icon-warning"></i>
                                                密码由8至20位数字、字母、符号组成
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
                                            v-model="upwd" type="password" 
                                            clearable>
                                        </el-input>
                                    </div>
                                </el-col>
                                <el-col :span="10">
                                    <div class="grid-content bg-purple">
                                         <span class="item item2" >
                                             <i class="el-icon-warning"></i>
                                               密码由8至20位数字、字母、符号组成
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
                                            v-model="upwd1" type="password" 
                                            clearable>
                                        </el-input>
                                    </div>
                                </el-col>
                                <el-col :span="10">
                                    <div class="grid-content bg-purple">
                                         <span class="item item2" >
                                             <i class="el-icon-warning"></i>
                                               密码由8至20位数字、字母、符号组成
                                         </span>
                                    </div>
                                </el-col>
                           </el-row>  
                    </div>
                    <div v-show="active==2" class="register-item">
                        
                    </div>
               </div>
               <button @click="next" class="btn" :disabled="nextPage">下一步</button>
        </div>
    </div>
</template>

<script>
  export default {
    data() {
      return {
        active: 0,
        uname:"",
        phone:"",
        upwd:"",
        upwd1:"",
        nextPage:true,
        msg1:"",
        itemColor:"",
        "item1Icon":"",
      };
    },

    methods: {
      next() {
        if (this.active++ > 2) this.active = 0;
      },
    //  用户名聚焦事件
    unameFocus(){
        this.msg1="用户名由6至12位数字、字母、符号、汉字组成";
        this.item1Color="color1";
        this.item1Icon="el-icon-info";
    },
    // 用户名失去焦点事件
    unameBlur(){
        if(this.uname==undefined){
             this.msg1="用户名不能为空";
             this.item1Color="color3";
             this.item1Icon="el-icon-error";
        }
    }
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
</style>