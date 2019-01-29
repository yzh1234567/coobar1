<template>
    <div class="app-products">
        <div id="products">
            <!-- 产品列表头部-->
            <div class="products_top">
                <p>
                    <span>全部结果--></span>
                    <span>食品</span>
                </p>
                <div class="product_classify">
                    <div class="pc_item1 pc_item">
                        <div>
                            <span>产地</span>
                        </div>
                        <div>
                            <span>北京</span>
                            <span>上海</span>
                            <span>重庆</span>
                            <span>天津</span>
                            <span>湖北</span>
                            <span>湖南</span>
                            <span>河北</span>
                        </div>
                        <div>
                            <span>更多</span>
                            <span>多选</span>
                        </div>
                    </div>
                    <div class="pc_item2 pc_item">
                        <div>
                            <span>种类</span>
                        </div>
                        <div>
                            <span>大豆</span>
                            <span>玉米</span>
                            <span>花生</span>
                            <span>土豆</span>
                            <span>西红柿</span>
                            <span>大米</span>
                            <span>黄瓜</span>
                            <span>花菜</span>
                        </div>
                        <div>
                            <span>更多</span>
                            <span>多选</span>
                        </div>
                    </div>
                    <div class="pc_item3 pc_item">
                        <div>
                            <span>品牌</span>
                        </div>
                        <div>
                            <span>蒙羊</span>
                            <span>双汇</span>
                            <span>中粮</span>
                            <span>五常大米</span>
                        </div>
                        <div>
                            <span>更多</span>
                            <span>多选</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 产品列表主体-->
            <div class="products_main">	
				    <div  class="products_main_shrink" v-show="hidden">
				       <p @click="shrink" class="pm-item pm-item1"><收起侧栏</p>
							 <p class="pm-item pm-item2">精品蔬菜热销榜</p>
							 <ul>
							      <li></li>
							 </ul>
				    </div>
						<div class="products_middle" :class="pmStyle">
								<div  @click="spread" v-show="noHidden">展开侧栏></div>
								<div class="products_limitCondition" :class="topStyle">
										<div class="limitCondition_item limitCondition_item1" >
												<ul>
														<li class="active">综合</li>
														<li>销量</li>
														<li>评论数</li>
														<li>好评度</li>
														<li>新鲜度</li>
														<li>价格</li>
												</ul>
												<ul>
														<li><input type="text" placeholder="最低价"/></li>
														<li>-</li>
														<li><input type="text" placeholder="最高价"/></li>
														<li><button>确定</button></li>
												</ul>
												<div>
														<span>共计100+件商品</span>
														<span>1</span>
														<span>/</span>
														<span>5</span>
														<span><</span>
														<span>></span>
												</div>
										</div>
										<div class="limitCondition_item limitCondition_item2">
												<div>
														<input type="checkbox"/>有货
														<input type="checkbox"/>货到付款
														<input type="checkbox"/>包邮
														<input type="checkbox"/>新品上市
														<input type="checkbox"/>优惠活动
												</div>
												<div>
														<input type="text" placeholder="在结果中搜索"/>
														<a href="javascript:;">搜索</a>
												</div>
										</div>
								</div>
								<div class="product_lists">
										 <ul class="product_list">
												 <li v-for="product of products">
                                                         <router-link :to="`${product.href}${product.id}`">
																 <img :src="`http://localhost:3000/${product.img_src}`" alt=""/>
														 </router-link>
														 <p class="price">￥{{product.new_price}}</p>
														 <p class="details">{{product.title}}</p>
														 <div class="buyCount">
																 <span>购买数量:</span>
																 <button>-</button>
																 <input type="text" :value="product.count" readonly/>
																 <button>+</button>
														 </div>
														 <div class="buy">
																 <a href="javascript:;">立即购买</a>
																 <a href="javascript:;">加入购物车</a>
														 </div>
												 </li>	
										 </ul>
										 <ul class="page_list">
												 <li>上一页</li>
												 <li>1</li>
												 <li>2</li>
												 <li>3</li>
												 <li>4</li>
												 <li>5</li>
												 <li>6</li>
												 <li>下一页</li>
										 </ul>
								</div>
						</div>     
				</div>
        </div>
    </div>
</template>
<script>
export default {
     data(){
         return{
             kwords:"",
             products:[],
             pageSize:20,  //页大小
             pageIndex:0,  //页码
             pageCount:1,  //页数 默认为1
             noHidden:true,
             hidden:false,
             topStyle:"l-item1",
             pmStyle:"",
         }
     },
     created(){
        //  获取搜索框传入要搜索的关键字
        this.kwords=this.$route.params.kwords;
        this.getProducts();
     },
     methods:{
        //  获取产品
        getProducts(){
               this.pageIndex=this.pageIndex+1;
               var pno=this.pageIndex;
               var pageSize=this.pageSize;
               var kwords=this.kwords;
               this.axios.get("http://localhost:3000/products",{
                   params:{pno,pageSize,kwords}
               }).then((res)=>{
                   this.pageCount=res.data.pageCount;
                   this.products=res.data.data;
               })
        },
        // 展开侧栏方法
        spread(){
            this.noHidden=false;
            this.hidden=true;
            this.topStyle="l-item2";
            this.pmStyle="pm-style";
        },
        // 收起侧栏
        shrink(){
            this.noHidden=true;
            this.hidden=false;
            this.topStyle="l-item1";
            this.pmStyle="";
        },
     }
}
</script>
<style scoped>
      #products{
    width:1200px;
    margin:10px auto;
}
   /*产品顶部样式*/
        /*产品分类的样式*/
        #products>div.products_top>div.product_classify>div.pc_item{
            display: flex;
            border-bottom: 1px dashed #ccc;
        }
        div.pc_item1{
            border-top:1px solid #ccc;
        }
        div.pc_item>div{
            height:50px;
            line-height:50px;
        }
        div.pc_item>div>span{
            display: inline-block;
            text-align: center;
        }
        div.pc_item>div:first-child{
            width:120px;
            text-align: center;
            background: #00c65d;
            font-size: 21px;
        }
        div.pc_item>div:nth-child(2){
            width:900px;
        }
        div.pc_item>div:nth-child(2)>span{
            margin:0 10px;
        }
        div.pc_item>div:last-child{
            width:180px;
            display: flex;
        }
        div.pc_item>div:last-child>span{
            width:80px;
            margin:10px 5px;
            height:30px;
            border:1px solid #ddd;
            line-height: 30px;
        }
/*产品列表主体样式*/
.products_main{
    display:flex;
}
.products_main_shrink{
    width:220px;
    border:1px solid;
    box-sizing:content-box;
    margin-top: 10px;
}
.products_main_shrink>.pm-item{
    width:100%;
}
.products_main_shrink>.pm-item1{
    text-align:right;
}
div.products_middle{
    display:flex;
    flex-flow: wrap;
    margin-top: 10px;
}
div.pm-style{
    width:960px;
    margin-left:20px;
}
div.products_middle>div:first-child{
    width:120px;
    height:90px;
    text-align: center;
    line-height: 90px;
    background: #ccc;
}
div.products_middle div.limitCondition_item{
    display:flex;
    justify-content:space-between;
    background:#ccc;
    height:45px;
    padding:10px;
    box-sizing:border-box;
}
div.products_middle div.l-item1{
    width:1060px;
    margin-left:20px;
}
div.products_middle div.l-item2{
    width:960px;
}
div.limitCondition_item1>ul{
    display:flex
}
div.limitCondition_item1>ul>li{
     height:30px;
}
div.limitCondition_item1>ul:first-child>li{
    display: inline-block;
    width:60px;
    border:1px solid #bbb;
    text-align: center;
    line-height:30px;
}
div.limitCondition_item1>ul:first-child>li.active{
    background:#00c65d;
    color:#fff;
}
div.limitCondition_item1>ul:first-child>li:hover{
    border:1px solid #00c65d;
}
div.limitCondition_item1>ul:first-child>li+li{
    border-left: 1px solid #ccc;
}
div.limitCondition_item1>ul:nth-child(2){
    margin-left:-5%;
}
div.limitCondition_item1>ul:nth-child(2)>li{
    margin-left: 6px;
    line-height:30px;
}
div.limitCondition_item1>ul:nth-child(2)>li>input{
    width:100px;
    height:30px;
    box-sizing:border-box;
    padding-left:5px;
}
div.limitCondition_item1>ul:nth-child(2)>li>button{
    width:50px;
    height:30px;
    box-sizing:border-box;
    line-height:30px;
}
div.limitCondition_item1>div>span{
    user-select:none;
}                                                                     
div.limitCondition_item1>div>span:nth-child(5),div.limitCondition_item1>div>span:nth-child(6){
    display: inline-block;
    width:40px;
    text-align: center;
    border:1px solid #aaa;
    height:30px;
    line-height:30px;
}
div.limitCondition_item2>div:first-child>input{
    margin:0 8px;
}
div.limitCondition_item2>div:last-child>a{
    display: inline-block;
    width:60px;
    text-align: center;
    background: #00c65d;
    color:#fff;
    height:30px;
    line-height:30px;
    box-sizing:border-box;
}
div.limitCondition_item2>div:last-child>input{
       width:100px;
       height:30px;
       line-height:30px;
       box-sizing:border-box;
       outline:none;
}
/*商品列表*/
.product_lists>ul.product_list{
    display:flex;
    flex-flow: wrap;
}
.product_lists>ul.product_list>li{
    width: 240px;
    padding: 10px;
    border:2px solid #fff;
}
.product_lists>ul.product_list>li:hover{
    border:2px solid #00c65d;
}
.product_lists>ul.product_list>li>a>img{
    width:220px;
}
.product_lists>ul.product_list>li>div.buyCount>button{
    width:30px;
    height:30px;
}
.product_lists>ul.product_list>li>div.buyCount>input{
    width:60px;
    height:30px;
    text-align: center;
}
.product_lists>ul.product_list>li>div.buy{
    margin: 10px 0;
}
.product_lists>ul.product_list>li>div.buy>a{
    display: inline-block;
    width:100px;
    height:40px;
    text-align: center;
    line-height: 40px;
    background: #00c65d;
}
/*页码样式*/
.product_lists>.page_list{
    display: flex;
    justify-content: flex-end;
}
.product_lists>.page_list>li{
    width:40px;
    height:40px;
    border:1px solid #ddd;
    text-align: center;
    line-height: 40px;
}
.product_lists>.page_list>li:first-child,.product_lists>.page_list>li:last-child{
    width:80px;
}
</style>