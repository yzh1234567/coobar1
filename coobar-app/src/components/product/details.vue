<template>
    <div class="app-details">
        <div>
        <div id="product_detaiil">
            <div class="detail_top">
                  <div class="product_nav">
                    <ul class="bread_crumb">
                        <li class="item">
                            <a href="javascript:;">生鲜</a>
                        </li>
                        <li></li>
                        <li class="item">
                            <a href="javascript:;">蔬菜馆</a>
                        </li>
                        <li></li>
                        <li class="item">
                            <a href="javascript:;">精品蔬菜</a>
                        </li>
                        <li></li>
                        <li class="item">
                            <a href="javascript:;">南瓜</a>
                        </li>
                    </ul>
                </div>
                <div class="product">
                    <!-- 产品图-->
                    <div class="product_picture">
                        <!-- 产品大图-->
                        <div class="big_picture">
                            <img :src="`http://coobar.applinzi.com/${product.img_md}`" alt="" v-for="(product,index) of productPics" :key="index"  v-show="count==index" />
                        </div>
                        <div class="super_mask" @mousemove="mdPic">
                        </div>
                        <div class="bigger_picture">
                            <img :src="`http://coobar.applinzi.com/${product.img_md}`" alt="" v-for="(product,index) of productPics" :key="index"  v-show="count==index" :style="{left:left1+'px',top:top1+'px'}"/>
                        </div>
                        <div class="mask" :style="{left:left+'px',top:top+'px'}"></div>
                        <!-- 产品小图-->
                        <div class="small_picture">
                            <div>
                                <div  v-for=" (item,index) of productPics" :key="index" 
                                :class="[count==index?'active':'']" v-show="count-5<index" @mouseenter="inPic" :data-index="index">
                                    <img :src="`http://coobar.applinzi.com/${item.img_sm}`" alt=""/>
                                </div>
                            </div>
                            <!-- <ul>
                                <li>
                                    <img src="http://coobar.applinzi.com/img/produc_details/product_details1/small_picture/ps6.jpg" alt=""/>
                                </li>
                                <li>
                                    <img src="http://coobar.applinzi.com/img/produc_details/product_details1/small_picture/ps7.jpg" alt=""/>
                                </li>
                                <li>
                                    <img src="http://coobar.applinzi.com/img/produc_details/product_details1/small_picture/ps8.jpg" alt=""/>
                                </li>
                                <li>
                                    <img src="http://coobar.applinzi.com/img/produc_details/product_details1/small_picture/ps9.jpg" alt=""/>
                                </li>
                                <li>
                                    <img src="http://coobar.applinzi.com/img/produc_details/product_details1/small_picture/ps10.jpg" alt=""/>
                                </li>
                            </ul> -->
                            <button class="btn btn-left" @click="picPrev" :disabled="count==0">
                                <i class="el-icon-arrow-left"></i>
                            </button>
                            <button class="btn btn-right" @click="picNext" :disabled="count==productPics.length-1">
                                <i class="el-icon-arrow-right"></i>
                            </button>
                        </div>
                    </div>
                    <!-- 产品信息-->
                    <div class="product_msg">
                        <h2 class="pm_item1">新疆板栗南瓜单个装重1-2kg</h2>
                        <div class="pm_item2">
                            <p>
                                <span>现价</span>
                                <span>￥29.9</span>
                                <span>原价￥49.9</span>
                            </p>
                            <p>
                                <span>优惠券</span>
                                <a href="" class="preferential">满99减10</a>
                                <a href="" class="preferential">满169减20</a>
                                <a href="" class="preferential">满199减30</a>
                                <a href="">更多>></a>
                            </p>
                            <p>
                                <span>促销</span>
                                <span>购买满49可优惠换购热销商品</span>
                                <a href="">更多>></a>
                            </p>
                        </div>
                        <p class="pm_item3">
                            <span>月交易<a href="javascript:;">1100</a>笔</span>
                            <span>累计评论<a href="#">19934</a>条</span>
                            <a href="#">收藏</a>
                            <a href="#">分享</a>
                        </p>
                        <div class="pm_item4">
                            
                            <!-- <ul>
                                <li>配送至</li>
                                <li>
                                    <ul>
                                        <li>请选择送货地址</li>
                                        <li>有货</li>
                                    </ul>
                                    <div class="address">
                                        <div class="nav">
                                            <ul class="tabs">
                                                <li class="active">请选择省市</li>
                                                <li>请选择</li>
                                                <li>请选择</li>
                                                <li>请选择</li>
                                            </ul>
                                            <div class="box"></div>
                                        </div>
                                        <div class="cities">
                                            <ul class="active">
                                                <li>北京</li>
                                                <li>上海</li>
                                                <li>天津</li>
                                                <li>重庆</li>
                                                <li>河北</li>
                                                <li>山西</li>
                                                <li>辽宁</li>
                                                <li>吉林</li>
                                                <li>黑龙江</li>
                                                <li>江苏</li>
                                                <li>浙江</li>
                                                <li>安徽</li>
                                                <li>福建</li>
                                                <li>江西</li>
                                                <li>山东</li>
                                                <li>河南</li>
                                                <li>湖北</li>
                                                <li>湖南</li>
                                                <li>广东</li>
                                                <li>海南</li>
                                                <li>四川</li>
                                                <li>贵州</li>
                                                <li>云南</li>
                                                <li>陕西</li>
                                                <li>甘肃</li>
                                                <li>青海</li>
                                                <li>台湾</li>
                                                <li>内蒙古</li>
                                                <li>广西</li>
                                                <li>西藏</li>
                                                <li>宁夏</li>
                                                <li>新疆</li>
                                                <li>香港</li>
                                                <li>澳门</li>
                                            </ul>
                                            <ul></ul>
                                            <ul></ul>
                                            <ul></ul>
                                        </div>
                                    </div>
                                </li>
                            </ul> -->
                        </div>
                        <p class="pm_item5">
                            <span>服务</span>
                            <el-dropdown>
                                <el-button class="el-dropdown-link">
                                    更多选择<i class="el-icon-arrow-down el-icon--right"></i>
                                </el-button>
                                <el-dropdown-menu slot="dropdown">
                                    <el-dropdown-item>售后服务</el-dropdown-item>
                                    <el-dropdown-item>人工服务</el-dropdown-item>
                                </el-dropdown-menu>
                            </el-dropdown>
                        </p>
                        <p class="pm_item6">
                            <b>数量</b>
                             <el-input-number v-model="value" :min="1" :max="99" label="描述文字"></el-input-number>
                        </p>
                        <p class="pm_item7">
                            <a href="javascript:;" data-toggle="shopping_car">加入购物车</a>
                            <a href="javascript:;">立即购买</a>
                        </p>
                    </div>
                    <!-- 买家推荐-->
                    <div class="buyer_products">
                        <h5>--买家推荐--</h5>
                        <!-- 8张广告图-->
                        <div class="product_right">
                            <div>
                                <vue-Seamless :data="lists" :class-option="defaultOption">
                                        <a href="javascript:;" v-for="(item,index) of lists" :key="index">
                                            <img :src="`http://coobar.applinzi.com/img/F1_product/${item.img}`" alt=""/>
                                            <div>
                                                <p>{{item.title}}</p>
                                                <p>￥{{item.price}}</p>
                                            </div>
                                        </a>
                                </vue-Seamless>                               
                            </div>
                           
                            <!-- <div>
                                <a href="">
                                    <img src="http://coobar.applinzi.com/img/F1_product/土豆1.jpg" alt=""/>
                                    <div>
                                        <p>新土豆4-5个重约2kg</p>
                                        <p>￥4.5</p>
                                    </div>
                                </a>
                                <a href="">
                                    <img src="http://coobar.applinzi.com/img/F1_product/洋葱1.jpg" alt=""/>
                                    <div>
                                        <p>湖南洋葱2个装(单个重0.5kg)</p>
                                        <p>￥6.5</p>
                                    </div>
                                </a>
                                <a href="">
                                    <img src="http://coobar.applinzi.com/img/F1_product/西红柿1.jpg" alt=""/>
                                    <div>
                                        <p>山东西红柿2kg</p>
                                        <p>￥10.5</p>
                                    </div>
                                </a>
                                <a href="">
                                    <img src="http://coobar.applinzi.com/img/F1_product/玉米.jpg" alt=""/>
                                    <div>
                                        <p>湖北甜玉米3根装重约750g</p>
                                        <p>￥9.9</p>
                                    </div>
                                </a>
                                <a href="">
                                    <img src="http://coobar.applinzi.com/img/F1_product/红薯1.jpg" alt=""/>
                                    <div>
                                        <p>福建蜜薯500g(单个重约260g)</p>
                                        <p>￥5.9</p>
                                    </div>
                                </a>
                                <a href="">
                                    <img src="http://coobar.applinzi.com/img/F1_product/金针菇1.jpg" alt=""/>
                                    <div>
                                        <p>甘肃金针菇500g</p>
                                        <p>￥6.9</p>
                                    </div>
                                </a>
                                <a href="">
                                    <img src="http://coobar.applinzi.com/img/F1_product/黄瓜1.jpg" alt=""/>
                                    <div>
                                        <p>本地大棚黄瓜3根装(单根重150g)</p>
                                        <p>￥7.9</p>
                                    </div>
                                </a>
                                <a href="">
                                    <img src="http://coobar.applinzi.com/img/F1_product/松花菜1.jpg" alt=""/>
                                    <div>
                                        <p>云南松花菜1颗(重约1.6kg)</p>
                                        <p>￥8.5</p>
                                    </div>
                                </a>
                            </div> -->
                        </div>
                        <!-- 上下指示符-->
                    </div>
                </div>
            </div>
            <!-- 产品主题信息-->
            <div class="detail_main">
                <!-- 详情左边-->
                <div class="dm_left"></div>
                <!-- 详情中间-->
                <div class="dm_middle">
                    <ul>
                        <li class="active">商品详情</li>
                        <li>售后服务</li>
                        <li>商品评价</li>
                    </ul>
                    <div class="dm_middle_top">
                        <ul>
                            <li>品牌:coobar生鲜</li>
                            <li>商品名称:新疆板栗南瓜</li>
                            <li>商品毛重:3kg</li>
                            <li>商品净量:1-2kg</li>
                            <li>商品产地:新疆</li>
                            <li>包装:精装</li>
                        </ul>
                        <img src="http://coobar.applinzi.com/img/produc_details/product_details1/long-picture/20180914061402870.jpg" alt=""/>
                    </div>
                    <!-- 售后服务-->
                    <div class="product_serve">
                         <span>售后服务</span>
                        <div>
                            <p>1、生鲜“极速赔”绿色通道</p>
                            <p>生鲜的破损或腐坏等问题，请在商品签收后48小时内提交“极速赔”申请，100分钟内审核通过后即享补偿，无需返回商品；非鲜活易腐类商品需上门取件。</p>
                        </div>
                        <div>
                            <p>2、专业生鲜客服团队—让您售后无忧</p>
                            <p>在线客服:******</p>
                            <p>客服电话:******</p>
                            <p>服务时间:09:00-24:00</p>
                        </div>
                        <div>
                            <p>3、价格说明</p>
                            <p>成交价：为商品的销售价，是您最终决定是否购买商品的依据。</p>
                            <p>划线价：商品展示的划横线价格为参考价，并非原价，该价格可能是品牌专柜标价、商品吊牌价或由品牌供应商提供的正品零售价（如厂商指导价、建议零售价等）或该商品在coorbar平台上曾经展示过的销售价；由于地区、时间的差异性和市场行情波动，品牌专柜标价、商品吊牌价等可能会与您购物时展示的不一致，该价格仅供您参考。</p>
                            <p>折扣：如无特殊说明，折扣指销售商在原价、或划线价（如品牌专柜标价、商品吊牌价、厂商指导价、厂商建议零售价）等某一价格基础上计算出的优惠比例或优惠金额；如有疑问，您可在购买前联系销售商进行咨询</p>
                             <p>异常问题：商品促销信息以商品详情页“促销”栏中的信息为准；商品的具体售价以订单结算页价格为准；如您发现活动商品售价或促销信息有异常，建议购买前先联系销售商咨询。</p>
                        </div>
                    </div>
                    <!-- 商品评价-->
                    <div class="product_evaluate">
                        <span>商品评价</span>
                        <div>
                             <div class="score">
                                 4.7分
                             </div>
                             <div>
                                 <ul>
                                     <li>香甜可口</li>
                                     <li>新鲜</li>
                                     <li>份量十足</li>
                                     <li>经济实惠</li>
                                     <li>味道甜蜜</li>
                                 </ul>
                             </div>
                        </div>
                        <ul>
                            <li>全部1.9万多条</li>
                            <li>好评1.6万多条</li>
                            <li>中评3000多条</li>
                            <li>差评78条</li>
                            <li>更多评价</li>
                        </ul>
                        <!-- 用户评价展示区-->
                        <div class="evaluateShow">
                            <div>
                                <p>
                                    <span>用户名:</span>
                                    <span>我是一个素食主义者</span>
                                </p>
                                <p>
                                    <span>评分:</span>
                                    <span>4.8分</span>
                                </p>
                                <p>
                                    <span>主题:</span>
                                    <span>好评</span>
                                </p>
                                <p>
                                    <span>内容:</span>
                                    <span>好吃,煮熟后南瓜中含有板栗的味道！！</span>
                                </p>
                                <p>
                                    <span>时间:</span>
                                    <span>2018-12-10 11:36</span>
                                </p>
                            </div>
                            <div>
                                <p>
                                    <span>用户名:</span>
                                    <span>我是一个素食主义者</span>
                                </p>
                                <p>
                                    <span>评分:</span>
                                    <span>4.8分</span>
                                </p>
                                <p>
                                    <span>主题:</span>
                                    <span>好评</span>
                                </p>
                                <p>
                                    <span>内容:</span>
                                    <span>好吃,煮熟后南瓜中含有板栗的味道！！</span>
                                </p>
                                <p>
                                    <span>时间:</span>
                                    <span>2018-12-10 11:36</span>
                                </p>
                            </div>
                            <ul>
                                <li>上一页</li>
                                <li>1</li>
                                <li>2</li>
                                <li>3</li>
                                <li>4</li>
                                <li>5</li>
                                <li>下一页</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- 详情右边-->
                <div class="dm_right"></div>
            </div>
        </div>
    </div>
    </div>
</template>
<script>
import indexHeader from "@/components/header/indexHeader"
// 下载的第三方模块 vue-seamless-scroll
import vueSeamless from "vue-seamless-scroll";
export default {
    components:{
        indexHeader,
        vueSeamless,
    },
    data(){
         return {
             details:[],
             productPics:[],
             value:1,
             lists:[
                 {img:"土豆1.jpg",title:"新土豆4-5个重约2kg",price:4.5},
                 {img:"洋葱1.jpg",title:"湖南洋葱2个装(单个重0.5kg)",price:6.5},
                 {img:"西红柿1.jpg",title:"山东西红柿2kg",price:10.5},
                 {img:"玉米.jpg",title:"湖北甜玉米3根装重约750g",price:9.9},
                 {img:"红薯1.jpg",title:"福建蜜薯500g(单个重约260g)",price:5.9},
                 {img:"金针菇1.jpg",title:"甘肃金针菇500g",price:6.9},
                 {img:"黄瓜1.jpg",title:"本地大棚黄瓜3根装(单根重150g)",price:7.9},
                 {img:"松花菜1.jpg",title:"云南松花菜1颗(重约1.6kg)",price:8.5}
                 ],
             count:0,
             num:0,
             left:0,
             top:0,
             left1:0,
             top1:0,
         }
     },  
      created(){
          this.getDetails();
      },
      methods:{
        //    获取详情
        getDetails(){
            var pid=1;
            this.axios.get("http://coobar.applinzi.com/productDetail",{
                params:{pid}
            }).then((res)=>{
                 if(res.data.code==1){
                     this.productPics=res.data.msg.pics;
                     this.details=res.data.msg.details;
                 }
            })
        },
        // 点击头部产品信息小照片进入上一页
           picPrev(){
                this.count--;
           },
        // 点击头部产品信息小照片进入下一页
           picNext(){
                 this.count++;
           },
        // 鼠标进入头部产品信息小照片
            inPic(e){
                 var index=parseInt(e.target.dataset.index);
                 this.count=index;  
            },
        // 放大镜效果
           mdPic(e){
                  this.top=e.offsetY-50;
                  this.left=e.offsetX-50;
                  if(this.top<0){
                      this.top=0
                  }else if(this.top>300){
                      this.top=300
                  };
                    if(this.left<0){
                      this.left=0
                  }else if(this.left>300){
                      this.left=300
                  };
                  this.top1=-this.top;
                  this.left1=-this.left;
           },
      },
      computed:{
          defaultOption () {
                return {
                    step: 0.8, // 数值越大速度滚动越快
                    limitMoveNum: 4, // 开始无缝滚动的数据量 this.dataList.length
                    hoverStop: true, // 是否开启鼠标悬停stop
                    direction: 0, // 0向下 1向上 2向左 3向右
                    openWatch: true, // 开启数据实时监控刷新dom
                    singleHeight: 0, // 单步运动停止的高度(默认值0是无缝不停止的滚动) direction => 0/1
                    singleWidth: 0, // 单步运动停止的宽度(默认值0是无缝不停止的滚动) direction => 2/3
                    waitTime: 1000 // 单步运动停止的时间(默认值1000ms)
                }
            },
      }
}
</script>
<style scoped>
    .app-details>div{
    width:1200px;
    margin:0 auto;
}
/*产品浮动*/
div.product{
    display:flex;
}
/*产品详情顶部面包屑导航*/
div.product_nav>ul.bread_crumb{
   display: flex;
    margin:10px 0;
}
 div.detail_top>div.product_nav>ul.bread_crumb>li.item+li:before{
     content:">>>";
     line-height:21px;
 }
/*定义产品图样式*/
div.product_picture{
    width:400px;
    position:relative;
}
/*大图样式*/
div.big_picture{
    width:400px;
    height:400px;
}
div.big_picture>img{
    width:100%;
    position:absolute;
    top:0;left:0;
}

/*div.mask装饰，当鼠标到达页面时。显示*/
div.mask{
    background:rgba(200,200,200,0.45);
    width:100px;height:100px;
    position:absolute;
    display:none;
    z-index: 1;
}
/*div.super_mask装饰，防止div.mask抖动*/
div.super_mask{
    position:absolute;
    top:0;left:0;
    background:rgba(255,255,255,0);
    width:400px;height:400px;
    border:1px solid #aaa;
    z-index:10;
}
div.super_mask:hover~div.mask{
    display:block;
}
div.super_mask:hover+div.bigger_picture{
    display:block;
}
/*div.bigger_picture,图片放大显示*/
div.bigger_picture{
    position:absolute;
    width:200px;height:200px;
    border:1px solid #aaa;
    top:0;left:410px;
    background:#fff;
    z-index:20;
    display:none;
    overflow: hidden;
}
div.bigger_picture>img{
     position:absolute;
}
/*产品小图样式*/
div.small_picture{
    position:relative;
}
div.small_picture>div{
    width:400px;
    display:flex;
    margin:6px 0;
    overflow:hidden;
}
div.small_picture>div>div{
    border:1px solid #eee;
    width:80px;
    height:80px;
    padding:8px;
    box-sizing:border-box;
}
div.small_picture>div>div.active{
     border:1px solid #00c65d;
}
div.small_picture:hover>.btn{
    display:block;
}
div.small_picture>.btn{
    width:20px;height:60px;
    position:absolute;
    top:10px;
    display:none;  
}
div.small_picture>.btn-left{
    left:0;
}
div.small_picture>.btn-right{
    right:0;
}
/*产品信息*/
div.product_msg{
  margin-left:30px;
    width:560px;
}
div.product_msg p{
    margin:10px 0;
}
/*item2的样式*/
div.product_msg>div.pm_item2{
    background:#eee;
    padding:10px;
    border:1px solid #ddd;
}
div.product_msg>div.pm_item2>p>span:first-child{
    display:inline-block;
    width:60px;
    padding:0 5px;
    text-align:center;
    background:#f70738;
    color:#fff;
    margin-right:20px;
}
/*item中第1个p标签样式*/
div.product_msg>div.pm_item2>p:first-child>span:nth-child(2){
    color:#f70738;
    font-size:24px;
}
div.product_msg>div.pm_item2>p:first-child>span:nth-child(3){
    text-decoration: line-through;
}
/*item2中第2个p标签样式*/
div.product_msg>div.pm_item2>p:nth-child(2)>a.preferential{
    margin-right:6px;
    color:#fff;
    background:#f70738;
    display:inline-block;
    width:100px;
    text-align: center;
	border:1px solid #f70738;
}
div.product_msg>div.pm_item2>p:nth-child(2)>a.preferential:hover{
    background: #fff;
    color:#000;
    border:1px solid #f70738;
}
/*item3样式*/
div.product_msg>p.pm_item3>span{
    display:inline-block;
    width:160px;
    height:40px;
    text-align: center;
    line-height: 40px;
    background: #eee;
}
div.product_msg>p.pm_item3>a{
    display:inline-block;
    width:80px;
    background:#f70738;
    color:#fff;
    text-align: center;
}
/*item4样式*/
  div.product_msg>div.pm_item4{
      position:relative;
  }
div.pm_item4 ul{
    list-style: none;
    display:flex;
    flex-flow: wrap;
}
div.pm_item4>ul>li:nth-child(2)>ul{
    display: inline-block;
    height:32px;
    position:absolute;
    top:0;left:58px;
    z-index: 10;
}
div.pm_item4>ul>li:nth-child(2)>ul>li{
    float:left;
}
div.pm_item4>ul>li:nth-child(2)>ul>li:first-child{
    border:1px solid #aaa;
    line-height:32px;
    padding:0 10px;
    margin-right: 20px;
}
div.pm_item4>ul>li:nth-child(2):hover>ul>li:first-child{
    border-bottom:1px solid #fff;
}
div.pm_item4>ul>li:nth-child(2)>div.address{
    display:none;
    width:450px;
    border:1px solid #aaa;
    position:absolute;
    top:33px;left:58px;
    background:rgba(255,255,255,1);
    z-index: 1;
}
div.pm_item4>ul>li:nth-child(2):hover>div.address{
    display:block;
}
   /*div.address>div.nav的样式*/
div.address>div.nav{
    width:420px;
    border-bottom: 2px solid #f70738;
    margin:10px 0 10px 10px;
    position:relative;
}
div.address>div.nav>ul:first-child>li{
     border:1px solid #aaa;
    height:30px;width:90px;
    line-height: 30px;
    border-bottom-width:0;
    text-align: center;
    font-size: 13px;
    display: none;
}
div.address>div.nav>ul:first-child>li.active{
    display:inline-block;
}
div.address>div.nav>ul:first-child>li+li {
    margin-left: 10px;
}
div.address>div.nav>div.box{
    position:absolute;
    top:0;left:0;
    width:90px;height:32px;
    border:2px solid #f70738;
    border-bottom: 2px solid #fff;
    background: rgba(256,256,256,0);
    transition:all 0.5s linear;
}
    /*div.address>div.cities*/
div.address>div.cities{
    width:420px;
    margin:10px 0 10px 10px;
}
div.address>div.cities>ul{
    display: none;
}
div.address>div.cities>ul.active{
    display: block;
}
div.address>div.cities>ul>li{
    text-align: left;
    width:24%;
    float:left;
}
div.address>div.cities>ul>li:hover{
    color:#f70738;
}
/*item5样式*/
p.pm_item5>span{
    margin-right: 22px;
}
/*item6样式*/
div.product_msg>p.pm_item6>b{
    font-weight: normal;
    margin-right: 22px;
}
div.product_msg>p.pm_item6>span{
    display:inline-block;
    width:60px;height:30px;
    text-align: center;
    line-height: 30px;
    background: #eee;
    font-size:20px;
    user-select: none;
    margin-right:5px;
}
/*item7样式*/
div.product_msg>p.pm_item7>a{
   display:inline-block;
    width:160px;height:40px;
    text-align: center;
    line-height: 40px;
    background:#f70738;
    color:#fff;
    margin:25px 0 0 60px;
}
/*div.buyer_products 买家推荐*/
div.buyer_products{
    margin-left: 100px;
}
div.buyer_products>h5{
    margin-left:20px;
}
div.product_right{
    position:relative;
    width:160px;height:640px;
    overflow: hidden;
    border:1px solid #eee;
}
div.product_right>div:first-child{
    height:1280px;
    width:160px;
}
div.product_right>div:first-child a{
    display:block;
    width:160px;
    height:160px;
    position:relative;
}
div.product_right>div:first-child img{
    width:90%;
    margin:8px;
}
div.product_right>div:first-child a>div{
    position:absolute;
    top:100px;left:0;
    z-index: 10;
    text-align: center;
    background: rgba(255,255,255,0.4);
    display:none;
}
div.product_right>div:first-child a:hover>div{
    display:block;
}
div.product_right>div:first-child a>div>p{
    margin-bottom: 0;
    width:160px;
    line-height:28px;
    overflow: hidden;
    text-overflow:ellipsis;
    white-space: nowrap;
}
div.product_right>div:first-child a>div>p:first-child{
    width:100px;
    margin:0 auto;
}
/*产品详情主体信息*/
div.detail_main{
    margin-top:50px;
    border-top:2px solid;
    position:relative;
}
/*主题信息中间位置*/
div.detail_main>div.dm_middle{
    margin:0 auto;
    width:730px;
}
div.detail_main>div.dm_middle>ul{
    display: flex;
    height:50px;
    background: #eee;
}

div.detail_main>div.dm_middle>ul>li{
    line-height: 50px;
    font-size:22px;
    width:120px;
    text-align: center;
}
div.detail_main>div.dm_middle>ul>li.active{
    border-bottom: 2px solid #00c65d;
}
/*产品详情主体中顶部样式*/
div.dm_middle>div.dm_middle_top>ul{
    display:flex;
    flex-flow: wrap;
    border-bottom: 1px solid #eeeeee;
}
div.dm_middle>div.dm_middle_top>ul>li{
    width:40%;
    margin-left:10%;
    margin-top: 6px;
    margin-bottom: 6px;
}
/*售后服务样式*/
div.detail_main>div.dm_middle>div.product_evaluate>span,div.detail_main>div.dm_middle>div.product_serve>span{
    display:block;
    height:40px;
    background:#eee;
    line-height:40px;
    padding-left:20px;
}
div.product_serve>div>p{
        margin:8px 10px;
    }
div.product_serve>div>p:first-child{
    font-weight: bold;
}
/*商品评价呀样式*/
div.product_evaluate>div:nth-child(2){
    display:flex;
    margin: 10px 0;
}
div.product_evaluate>div:nth-child(2)>div.score{
    width:120px;
    height:100px;
    border:20px solid #00c65d;
    border-radius: 50%;
    text-align: center;
    line-height: 100px;
    font-size: 24px;
}
div.product_evaluate>div:nth-child(2)>div:last-child>ul{
      margin-left: 50px;
      display:flex;
      flex-flow: wrap;
}
div.product_evaluate>div:nth-child(2)>div:last-child>ul>li{
      width:120px;
      height:30px;
      text-align: center;
      line-height: 30px;
      border:1px solid #ddd;
      margin:10px;
}
div.product_evaluate>ul:nth-child(3){
    display: flex;
    height: 40px;
    background: #eee;
    justify-content: space-around;
}
div.product_evaluate>ul:nth-child(3)>li {
    line-height: 40px;
    width: 146px;
    text-align: center;
}
/*用户评论展示区*/
div.evaluateShow>div{
    border-bottom: 2px dashed #aaa;
}
div.evaluateShow>div>p{
    margin:8px 0;
}
div.evaluateShow>div>p>span:first-child{
    width:80px;
    text-align: center;
    display: inline-block;
}
div.evaluateShow>ul{
    display: flex;
     justify-content: flex-end;
}
div.evaluateShow>ul>li{
    margin:10px 2px;
    width:30px;
    heith:30px;
    text-align: center;
    line-height: 30px;
    border:1px solid #aaaaaa;
}
div.evaluateShow>ul>li:first-child,div.evaluateShow>ul>li:last-child{
    width:80px;
}
</style>