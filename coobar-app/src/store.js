import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

// 把用户的登录状态储存在vuex里面
const userModule={
  state:{
        //  用户登录状态初始化为false
        isLogin:false,
  },
  mutations:{
          modifyLogin:(state)=>{
              state.isLogin=true;
          }  
  },
  actions:{

  },
  getters:{

  },
};
// 把用户购物车中商品数量的状态储存在vuex里面
const   cartModule={
         state:{

         },
         mutations:{

         },
         actions:{

         },
         getters:{

         },
};
export default new Vuex.Store({
    modules:{
        user:userModule,
        Cart:cartModule,
    }
})
