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
                           <div class="items">
                                 <span class="item1">用户名</span>
                                <el-input
                                    placeholder="请输入用户名"
                                    v-model="uname"
                                    clearable>
                                </el-input>
                                <span class="item3"></span>
                            </div>  
                            <div class="items">
                                 <span class="item1">手机号码</span>
                                <el-input
                                    placeholder="请输入手机号码"
                                    v-model="uname" 
                                    clearable>
                                </el-input>
                                <span></span>
                            </div> 
                            <div class="items">
                                 <span class="item1">点击获取验证码</span>
                                <el-input
                                    placeholder="请输入手机号码"
                                    v-model="uname" 
                                    clearable>
                                </el-input>
                                <span></span>
                            </div>   
                    </div>
                    <div v-show="active==1">
                           <el-row :gutter="20">
                                <el-col :span="4">
                                    <div class="grid-content bg-purple">
                                         <span class="item item1">密码</span>
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
                                <el-col :span="12">
                                    <div class="grid-content bg-purple">
                                         <span class="item item2" >
                                             <i class="el-icon-warning"></i>
                                               密码由8至20位数字、字母、符号组成
                                         </span>
                                    </div>
                                </el-col>
                           </el-row> 
                             <el-row :gutter="20">
                                <el-col :span="4">
                                    <div class="grid-content bg-purple">
                                         <span class="item item1">确认密码</span>
                                    </div>
                                    </el-col>
                                <el-col :span="8">
                                    <div class="grid-content bg-purple">
                                        <el-input
                                            placeholder="请输入密码"
                                            v-model="upwd1" type="password" 
                                            clearable>
                                        </el-input>
                                    </div>
                                </el-col>
                                <el-col :span="12">
                                    <div class="grid-content bg-purple">
                                         <span class="item item2" >
                                             <i class="el-icon-warning"></i>
                                               密码由8至20位数字、字母、符号组成
                                         </span>
                                    </div>
                                </el-col>
                           </el-row>  
                    </div>
               </div>
               <el-button style="margin-top: 12px;" @click="next">下一步</el-button>
        </div>
    </div>
</template>

<script>
  export default {
    data() {
      return {
        active: 0,
        uname:"",
      };
    },

    methods: {
      next() {
        if (this.active++ > 2) this.active = 0;
      }
    }
  }
</script>

<style scoped>
        *{
            box-sizing:border-box;
        }
       /* 修改步骤进度样式 */
       /* >>>.el-step__icon.is-text{
           border:2px solid #f70738;
       } */
      >>>div.el-step__title.is-process{
           color:#f70738;
      }
      .app-register{
          width:800px;
          margin:10px auto;
      }
      /* .register-item>.items */
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
      }
      .bg-purple .item1{
        text-align:right;
      }
      >>>.bg-purple .el-input--small .el-input__inner{
          height:40px;
      }
</style>