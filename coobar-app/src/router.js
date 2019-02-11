import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import index from "./views/index"
import login from "./views/login.vue"
import loginErr from "./views/loginErr.vue"
import indexHeader from "./components/header/indexHeader"
import products  from "./components/product/products"
import register from "./views/register.vue"
import cart from "./views/cart.vue"
Vue.use(Router)

export default new Router({
  routes: [
    {path: '/',component: Home,children:[
      {path:"",component:index},
      {path:"/products/",component:products},
      {path:"/products/:kwords",component:products}
    ]},
    {path:"/login",component:login},
    {path:"/loginerr",component:loginErr},
    {path:"/register",component:register},
    {path:"/cart",component:cart}
  ]
})
