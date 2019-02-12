<template>
    <div class="app-header">
        <div class="my_header_top">
            <div class="container">
                <div class="navMenu">
                    <div class="navMenu-item1">
                        <ul>
                            <li>
                                <router-link to="/">主页</router-link>
                            </li>
                            <li>
                                <i class="el-icon-location-outline"></i><a href="javascript:;">{{address}}</a>
                                <div class="address">
                                     <ul class="address-item">
                                        <li  @click="province" v-for="(item,value) of area" :key="value" :data-idx="item">{{item}}</li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <el-menu :default-active="activeIndex" class="el-menu-demo"
                        mode="horizontal" @select="handleSelect" background-color="#e3e4e5"
                        text-color="#222" active-text-color="#f70738">
                            <el-menu-item index="1">
                                <a href="javascript:;" @click="jump">{{userMsg}}</a>
                            </el-menu-item>
                            <el-menu-item index="2">
                                <router-link to="/register">免费注册</router-link>
                            </el-menu-item>
                            <el-submenu index="3">
                                <template slot="title">我的订单</template>
                                <el-menu-item index="3-1">
                                    <div class="order-item">
                                        <router-link to="">待处理订单</router-link>
                                        <router-link to="">消息</router-link>
                                    </div>
                                </el-menu-item>
                                <el-menu-item index="3-2">
                                    <div class="order-item">
                                        <router-link to="">返修退换货</router-link>
                                    <router-link to="">我的问答</router-link>
                                    </div>
                                </el-menu-item>
                                <el-menu-item index="3-3">
                                    <div class="order-item">
                                        <router-link to="">降价商品</router-link>
                                        <router-link to="">我的关注</router-link>
                                    </div>
                                </el-menu-item>
                            </el-submenu>
                            <el-submenu index="4">
                                <template slot="title">我的客服</template>
                                <el-menu-item index="4-1">
                                    <router-link to="">在线客服</router-link>
                                </el-menu-item>
                                <el-menu-item index="4-2">
                                    <router-link to="">售后服务</router-link>
                                </el-menu-item>
                                <el-menu-item index="4-3">
                                    <router-link to="">客服邮箱</router-link>
                                </el-menu-item>
                                <el-menu-item index="4-4">
                                    <router-link to="">帮助中心</router-link>
                                </el-menu-item>
                                 <el-menu-item index="4-5">
                                    <router-link to="">意见与建议</router-link>
                                </el-menu-item>
                            </el-submenu>
                            <el-submenu index="5">
                                <template slot="title">网站导航</template>
                                <el-menu-item index="5-1">
                                    <router-link to="">水果馆</router-link>
                                </el-menu-item>
                                <el-menu-item index="5-2">
                                    <router-link to="">蔬菜馆</router-link>
                                </el-menu-item>
                            </el-submenu>
                    </el-menu>        
                </div> 
            </div> 
       </div>
        <div class="search">
             <div class="search-item1">
                    <img src="http://localhost:3000/img/index-header/logo.jpg" alt="" class=" my_logo"/>
                     <h6>主人, 欢迎来到coobar</h6>
                     <router-link to="/login">主人,请登陆</router-link>
                     <router-link to="/register">主人,请注册</router-link>
            </div>
            <div class="search-item2">
                <div>
                    <input type="text" placeholder="主人,搜索您想要的" class="search-box" v-model="kwords" @keyup.13="search"/>
                    <button class="search_btn" type="button" @click="search">点我</button>
                 </div>
                <ul >
                   <li>
                        <router-link to="/products">柚子</router-link>
                    </li>
                    <li>
                        <router-link to="/products">富士苹果</router-link>
                    </li>
                    <li>
                        <router-link to="/products">澳洲牛排</router-link>
                    </li>
                    <li>
                         <router-link to="/products">日本三文鱼</router-link>
                     </li>
                    <li>
                        <router-link to="/products">意大利罗马生菜</router-link>
                    </li>
                </ul>
            </div>
         <div class="search-item3">
                <div>
                   <img src="http://localhost:3000/img/index-header/shop_car1.png" alt=""/>
                    <router-link to="/cart">我的购物车</router-link>
                    <input type="text" value="0"/>
                </div>
            </div>   
        </div>
   </div>
</template>
<script>
  export default {
       data(){
           return {
               activeIndex:"1",
               kwords:"",
               address:"位置",
               area:['北京', '上海','天津','重庆','河北','山西'
                     ,'辽宁','吉林','黑龙江','江苏','浙江','安徽','福建'
                      ,'江西','山东','河南','湖北','湖南','广东'
                      ,'海南','四川','贵州','云南','陕西','甘肃','青海','台湾'
                     ,'内蒙古','广西','西藏','宁夏','新疆','香港','澳门'],
                userMsg:"您好,请登录"
           }
       },
       created(){
            var uname=sessionStorage.getItem("uname");
            if(uname){
                this.userMsg=uname
            };
       },
       methods: {
            handleSelect(key, keyPath) {
           },
          // 点击搜索按钮,执行搜索事件
          search(){
              this.$router.push("/products/"+this.kwords)
          },
            //点击省份，选择所在的省份位置;
          province(e){
                 var str=e.target.dataset.idx;
                 this.address=str;
            } ,
            // 判断是否跳到登陆页面
            jump(){
                if(this.userMsg=="您好,请登录"){
                     this.$router.push("/login");
                }
            }
       },
  }
</script>
<style scoped>
    .my_header_top{
    border-botton:1px solid #ddd;
    background:#e3e4e5;
    color:#999;
}
.my_header_top>.container{
    width:1200px;
    margin:0 auto;
}
/* 顶部导航栏样式 */
.container>.navMenu{
    width:1200px;
    display: flex;
    justify-content:space-between;
}
.navMenu-item1{
    background: #e3e4e5;
    color:#222;
}
>>>.navMenu-item1>ul{
    display: flex;
    font-size: 14px;
}
>>>.navMenu-item1>ul>li{
    height:60px;
    line-height: 60px;
    width:100px;
    text-align: center;
}
.navMenu-item1>ul>li:nth-child(2){
    position: relative;
}
.navMenu-item1>ul>li:nth-child(2):hover>.address{
    display:block;
}
/* 位置样式 */
.address{
    position:absolute;
    top:61px;left:0;
    background:#e3e4e5; 
    display: none;
    z-index: 2000;
}
.address::before{
    content:"";
    display: block;
    width:200px;
    height:6px;
    background:#f5f5f5;
}
.address-item{
    display: flex;
    width:200px;
    flex-flow: wrap;
}
.address-item>li{
    width:25%;
    text-align: center;
    height:24px;
    line-height:24px;
}
.address-item>li:hover{
    color:#f70738;
}
/* 订单颜色 */
.order-item{
    display: flex;
}
.order-item>a{
    width:50%;
    text-align: center;
}
.search{
    display: flex;
    width:1200px;
    margin:60px auto 0 auto;
    text-align:center;
}
/* .search-item1的样式 */
.search-item1{
    width:25%;
    margin-left:-45px;
}
.search-item1>img{ 
    width:100px;
    border-radius: 50%;
}
.search-item1>h6{
    margin:10px;
}
.search-item1>a{
   margin: 10px;
}
/* .search-item2的样式 */
.search-item2{
    width:60%;
}
.search-item2 .search-box{
     border:3px solid #00c65d;
    width:400px;height:50px;
    padding-left:10px;
    margin-top:50px;
}
.search-item2 .search-box:focus{
    outline:none;
}
.search-item2 .search_btn{
    height:56px;width:70px;
    border:3px solid #00c65d;
    color:#fff;
    background:#00c65d;
    margin:50px 0 0 2px;    
}
.search-item2>ul{
    display:flex;
    margin:10px auto;
    width:490px;
}
.search-item2>ul>li+li{
    margin:0 10px;
}
/* .search-item3的样式 */
.search-item3{
    width:15%;
}
.search-item3 div{
     border:1px solid #DFDFDF;
     height:50px;
    line-height:50px;
    margin-top:55px;
    text-align: center;
    position:relative;
    z-index: 1;
}
.search-item3>div>img{
    margin-right:5px;
    margin-top:-5px;
}
.search-item3>div>input{
    width:30px;height:30px;
    border-radius: 50%;
    text-align:center;
    background:#f10215;
    color:#fff;
    border:0;
    position:absolute;
    top:-15px;right:-15px;
}
</style>
