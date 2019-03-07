import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

Vue.config.productionTip = false
// <!-- 1、引入第三方模块axios 、element-UI-->
import axios from "axios"
import ElementUI from "element-ui"
import vueSeamless from "vue-seamless-scroll";
  //  引入element-ui组件库的css文件
import "element-ui/lib/theme-chalk/index.css"
// <!-- 2、修改axios配置信息，使跨域保存在session中 -->
axios.defaults.withCredentials=true;
// <!-- 3、注册组件 -->
Vue.use(ElementUI,{size:"small",zIndex:3000});
Vue.prototype.axios=axios;
// 建立全局路由守卫
router.beforeEach((to,from ,next)=>{
      var blackList=["/cart"];
      // 设置进入的页面路由是否有权限进入
      var path=to.path;
      if(blackList.indexOf(path)>=0){
           next({path:"/login"})
      }
        next(); 
})

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
