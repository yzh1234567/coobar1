<template>
  <div class="home">
      <div class="container ">
          <!-- 导航栏-->
          <div class="section_top_nav">
              <ul class="nav">
                  <li class="nav-item active">
                      <router-link to="/home" class="nav-link">
                          首页
                      </router-link>
                  </li>
                  <li class="nav-item">
                    <router-link to="/products" class="nav-link">限时购 </router-link>
                  </li>
                  <li class="nav-item">
                    <router-link to="/products" class="nav-link">生鲜大市场</router-link>
                  </li>
                  <li class="nav-item">
                    <router-link to="/products" class="nav-link">优惠百分百</router-link>
                  </li>
                  <li class="nav-item">
                    <router-link to="/products" class="nav-link">周末大放送 </router-link>
                  </li>
                  <li class="nav-item">
                    <router-link to="/products" class="nav-link">免费品尝</router-link>
                  </li>
                  <li class="nav-item">
                      <router-link to="/products" class="nav-link">品质保障</router-link>
                  </li>
              </ul>
          </div>
          <!-- 广告轮播图-->
          <swipe-box :lists="lists"></swipe-box>
  <!--全国时令蔬菜甄选-->
          <div class="F1_product ">
              <div class="title ">
                  全国时令蔬菜甄选
              </div>
              <div class="product_detail">
                      <!-- 产品1-->
                      <div class="F1" v-for=" (item,value) of F1_lists" :key="item.id">
                          <div class="F1_product1">
                             <router-link :to="`${item.href}${item.pid}`" class="product">
                                   <img :src="`http://localhost:3000/${item.img_src}`" alt=""/>
                             </router-link>
                              <p class="price">
                                  <span>现价:￥{{item.new_price}}</span>
                                  <span>原价:￥{{item.old_price}}</span>
                              </p>
                              <p class="detail">
                                <router-link :to="`${item.href}${item.pid}`" class="detail">{{item.title}}</router-link>
                              </p>
                              <div>
                                  <p>数量:</p>
                                  <span class="count_reduce" data-count="-1"  :data-value="value" @click="getCount">-</span>
                                  <input type="text" :value="item.count" class="count" readonly/>
                                  <span class="count_increase" data-count="1" :data-value="value" @click="getCount">+</span>
                                  <button class="shopping_car" data-toggle="shopping_car" :data-value="value" @click="addCart">加入购物车</button>
                              </div>
                          </div>
                    </div>
                </div>
              <!-- 全球美味水果-->
              <div class="title">
                  全国美味水果
              </div>
              <div class="product_detail">
                  <!-- 水果产品1-->
                  <div class="F2" v-for="item of F2_lists" :key="item.id">
                      <div class="F1_product1">
                          <router-link :to="`${item.href}${item.pid}`" class="product">
                              <img :src="`http://localhost:3000/${item.img_src}`" alt=""/>
                          </router-link>
                          <p class="detail">
                              <router-link :to="`${item.href}${item.pid}`" class="detail">新西兰进口奇异果4kg(30-36个)新鲜美味</router-link>
                          </p>
                          <p class="price">
                              <span>尝鲜价:￥{{item.new_price}}</span>
                              <span>专柜价:￥{{item.old_price}}</span>
                          </p>
                          <button class="shopping_car" data-toggle="shopping_car" :data-value="value" @click="addCart1">加入购物车</button>
                      </div>
                  </div>
              </div>
          </div>
  <!--精品肉质优选 -->
          <div class="F1_product">
              <div class="title">
                  精品肉质优选
              </div>
              <div class="carousel" data-ride="carousel" id="meat1">
                  <!-- 肉质产品产品轮播-->
                   <el-carousel height="250px">
                         <el-carousel-item v-for="(list3,value) of F3_lists" :key="value">
                              <div class="F3">
                                    <!-- 产品1-->
                                    <div class="F1_product1" v-for="item of list3" :key="item.id">
                                        <router-link :to="`${item.href}${item.pid}`">
                                             <img :src="`http://localhost:3000/${item.img_src}`" alt="">
                                        </router-link>
                                        <p class="detail">
                                            <router-link :to="`${item.href}${item.pid}`">
                                                澳大利亚进口牛排套餐10片装
                                             </router-link>
                                        </p>
                                        <p class="price">
                                            <span>亲情价:￥{{item.new_price}}</span>
                                            <span>品牌价:￥{{item.old_price}}</span>
                                        </p>
                                    </div>
                              </div>
                        </el-carousel-item>
                   </el-carousel>
              </div>
          </div>
      </div>
      <index-footer></index-footer>
  </div>
</template>

<script>
// @ is an alias to /src
import lbtu from "@/swiper/lunbotu.vue"
import indexFooter from "@/components/footer/indexFooter"
export default {
      components:{
          "swipe-box":lbtu,
          "index-footer":indexFooter,
      },
       data(){
        return {
             lists:[],
             F1_lists:[],
             F2_lists:[],
             F3_lists:[],
        }
    },
    created(){
        this.getImg();
        this.getInfo_F1();
        this.getInfo_F2();
        this.getInfo_F3();
    },
    methods:{
            //商品加入购物车
             addCart(e){
                 var value=parseInt(e.target.dataset.value);
                 var pid=this. F1_lists[value].pid;
                 var count=this. F1_lists[value].count;
                 var price=this. F1_lists[value].new_price;
                 this.axios.get("http://localhost:3000/addCart",{
                     params:{pid,count,price}
                 }).then((res)=>{
                     if(res.data.code==-1){
                         this.$router.push("/login")
                     }
                 })

             },
            //商品加入购物车
             addCart1(e){
                 var value=parseInt(e.target.dataset.value);
                 var pid=this. F2_lists[value].pid;
                 var count=this. F2_lists[value].count;
                 var price=this. F2_lists[value].new_price;
                 this.axios.get("http://localhost:3000/addCart",{
                     params:{pid,count,price}
                 }).then((res)=>{
                     if(res.data.code==-1){
                         this.$router.push("/login")
                     }
                 })

             },
            // 获取轮播图照片
            getImg(){
                this.axios.get("http://localhost:3000/getImg").then(res=>{
                    if(res.data.code==1){
                        this.lists=res.data.data;
                    }
                })
            },
            // 获取F1专区的信息;
            getInfo_F1(){
                  this.axios.get("http://localhost:3000/getIndexF1").then(res=>{
                    if(res.data.code==1){
                        this.F1_lists=res.data.data;
                    }
                })
            },
             // 获取F1专区的信息;
            getInfo_F2(){
                  this.axios.get("http://localhost:3000/getIndexF2").then(res=>{
                    if(res.data.code==1){
                        this.F2_lists=res.data.data;
                    }
                })
            },
             // 获取F1专区的信息;
            getInfo_F3(){
                  this.axios.get("http://localhost:3000/getIndexF3").then(res=>{
                    if(res.data.code==1){
                        this.F3_lists=res.data.data;
                    }
                })
            },
            // 购买商品数量
            getCount(e){
                var value=parseInt(e.target.dataset.value);
                var num=parseInt(e.target.dataset.count);
                this.F1_lists[value].count+=num;
                if(this.F1_lists[value].count<1){
                     this.F1_lists[value].count=1
                }
                if(this.F1_lists[value].count>99){
                    this.F1_lists[value].count=99
                }  
            }
    },
}
</script>
<style scoped>
   div.container{
     width:1200px;
	 margin:0 auto;
}
div.section_top_nav{
    margin-top:20px;
}
div.section_top_nav>ul{
   display: flex;
}
div.section_top_nav>ul>li{
  font-size:20px;
  height:40px;
  line-height: 40px;
  text-align: center;
  width:100px;
}
div.section_top_nav>ul>li+li{
  margin-left:30px;
}
div.section_top_nav>ul>li.active{
    background:#00c65d;
}
/*顶部轮播图*/
/*1、图片轮播*/
/*F1_product顶部title*/
div.F1_product>div.title{
    width:100%;
    height:99px;
    background:#00c65d;
    color:#f0f0f0;
    font-size:36px;
    text-align: center;
    line-height:99px;
    margin:10px 0;
}
/*product_detail的样式*/
div.product_detail{
    display:flex;
    flex-flow: wrap;
}
div.product_detail>div.F1{
    width:296px;
}
div.product_detail>div{
    border:2px solid #00c65d;
}
/*product的照片样式*/
div.F1_product1>a.product>img{
    width:100%;
}
/*价格的样式*/
p.price{
    display: flex;
    justify-content: space-around;
    margin:6px 0;
    font-size:18px;
}
p.price>span:first-child{
    color:#f70738;
}
p.price>span:last-child{
    color:#999;
    text-decoration: line-through;
}
/*产品detail的样式*/
p.detail{
    height:45px;
    line-height:45px;
    text-align: left;
    margin:6px 15px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
div.F1_product1>div{
    display:flex;
    flex-flow: wrap;
    margin-left:5px;
}
div.F1_product1>div>p{
    margin:0 10px;
}
div.F1_product1>div>span{
    display:inline-block;
    width:30px;
    user-select:none;
    height:30px;
    background:#eee;
    line-height:30px;
    text-align:center;
    color:#111;
    font-size:30px;
}
div.F1_product1>div>span:hover{
    cursor:pointer;
}
div.F1_product1>div>input.count{
    border:0;
    width:45px;
    height:30px;
    text-align:center;
    line-height:30px;
    font-size:24px;
}
div.F1_product1>div>button.shopping_car{
    width:90%;
    height:30px;
    background:#f70738;
    color:#fff;
    border:0;
    text-align:center;
    line-height:30px;
    margin:10px auto 10px auto;

}
/*F2样式*/
div.product_detail>div.F2{
    width:236px;
}
div.F1_product1>button{
    width:100%;
    height:30px;
    background:#f70738;
    color:#fff;
    border:0;
    text-align:center;
    line-height:30px;
    margin:10px 0;
}
/*精品肉质优选*/

div.F3{
    display:flex;
    justify-content: space-around;
    border:2px dashed #00c65d;
}
div.F3>div{
    width:20%;
}
 >>>button.el-carousel__button{
      width:30px;
      height:10px;
      border-radius:5px;
  }
  >>>.el-carousel__indicator.is-active button{
      background:#00c65d;
  }
/*#my_footer的样式*/
#my_footer{
    margin-top:10px;
}
</style>