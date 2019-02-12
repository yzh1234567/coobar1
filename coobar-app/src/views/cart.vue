<template>
    <div class="app-cart">
          <div class="cart">
    <div class="cart_top">
        <p class="top_item top_item1">
            <a href="javascript:;">全部商品</a>
            <a href="javascript:;">降价商品</a>
            <a href="javascript:;">库存紧张</a>
        </p>
        <p class="top_item top_item2">
            <input type="checkbox" class="item2_son item2_son1"  v-model="isAllSelected">全选
            <span class="item2_son item2_son2">商品信息</span>
						<span class="item2_son item2_son3">商品规格</span>
            <span class="item2_son item2_son4">商品单价</span>
            <span class="item2_son item2_son5">商品数量</span>
            <span class="item2_son item2_son6">商品金额</span>
            <span class="item2_son item2_son7">更多操作</span>
        </p>
    </div>
    <ul class="cart_main">
		<li class="cart_product" v-for="(product,index) of products" :key="index">
            <div class="product">
				<div class="product-item1">
					<input type="checkbox" v-model="product.isSelected">
				</div>
				<div class="product-item product-item2">
					<img :src="`http://localhost:3000/${product.img_src}`" alt="">
				</div >
				<div class="product-item product-item3">
					<p>{{product.title}}</p>
				</div>
				<div class="product-item product-item4">
					<p></p>			      
				</div>
                <div class="product-item product-item5">
                    <p class="new_price" v-show="product.new_price">现价:{{product.new_price}}</p>
                    <p class="old_price" v-show="product.old_price">原价:{{product.old_price}}</p>
                </div>
                <div class="product-item product-item6">
                    <button class="count" @click="addCount" data-step="-1" :data-index="index">-</button>
                    <input type="text" v-model="product.count">
                    <button class="count" @click="addCount" data-step="1" :data-index="index">+</button>
                </div>
				<div class="product-item product-item7">
					<span>￥:73.00</span>
				</div>
                <div class="product-item product-item8">
                    <p>加入收藏夹</p>
                    <p @click="remove" :data-index="index">删除</p>
                </div>
            </div>
        </li>
    </ul>
    <div class="cart-bottom">
		<div class="cart-item cart-item1">
			<input type="checkbox" v-model="isAllSelected">全选
		</div>
        <span class="cart-item cart-item2">删除</span>
        <span class="cart-item cart-item3">移入收藏夹</span>
        <span class="cart-item cart-item4">分享</span>
        <span class="cart-item cart-item5">总计商品 <span>{{products.length}}</span> 件</span>
        <span class="cart-item cart-item6">合计: <span>￥{{sum}}</span></span>
        <span class="cart-item cart-item7">结算</span>
    </div>
</div>
    </div>
</template>

<script>
export default {
     components:{

     },
     data(){
         return {
              products:[],
              isAllSelected:false,
         }
     },
     created(){
         this.queryCart();
     },
     methods:{
        //  查询购物车
        queryCart(){
             this.axios.get("http://localhost:3000/queryCart").then((res)=>{
                    if(res.data.code==-1){
                         this.$router.push("/login");
                    }else if(res.data.code==1){
                         this.products=res.data.msg;
                         for(var i=0;i<this.products.length;i++){
                              this.products[i].isSelected=false;
                         }
                    }
            })    
        },
        // 修改购物车商品数量
        addCount(e){
            var index=parseInt(e.target.dataset.index);
            var step=parseInt(e.target.dataset.step);
            var cid=this.products[index].cid;
            this.products[index].count+=step;
            if(this.products[index].count<1){
                this.products[index].count=1
            };
            if(this.products[index].count>99){
                this.products[index].count=99;
            };
            var count=this.products[index].count;
            this.axios.get("http://localhost:3000/updateCart",{
                params:{count,cid}
            }).then((res)=>{
                 if(res.data.code==-1){
                      this.$router.push("/login");
                 }
            })
        },
        // 删除商品
          remove(e){
               var index=parseInt(e.target.dataset.index);
               var cid=this.products[index].cid;
               this.products.splice(index,1);
               this.axios.get("http://localhost:3000/deleteCart",{
                   params:{cid}
               }).then((res)=>{
                   if(res.data.code==-1){
                       this.$router.push("/login")
                   }
               }) 
          },
     },
     watch:{
           isAllSelected(){
                  for(var i=0;i<this.products.length;i++){
                        this.products[i].isSelected=this.isAllSelected;
                    }
           }
     },
    //  计算属性
    computed:{
        sum(){
            return this.products.reduce(function(prev,elem){
                return prev+elem.new_price*elem.count;
            },0)
        }
    }
}
</script>

<style scoped>
    .cart{
		    width:1200px;
			margin:10px auto;
		}
    .cart_top>.top_item{
		    display:flex;
			height:50px;
			align-items:center;
		}
	.cart_top>.top_item1{
            border-bottom:2px solid #e6e6e6;
			font-size:24px;
		}
	.cart_top>.top_item1>a{
            width:160px;
			text-align:center;
		}
	.cart_top>.top_item2>.item2_son{
            padding-left:10px;
		}
	.cart_top>.top_item2>.item2_son2{
            margin-left:100px;
			width:220px;
		}
	.cart_top>.top_item2>.item2_son3{
            width:220px;
		}
	.cart_top .item2_son4,.cart_top .item2_son5,.cart_top .item2_son6{
             width:140px;
		}
	.cart_top .item2_son7{
            width:120px;
		}
	ul{
            padding:0;
		}
	ul>li{
           list-style:none;
		}
	.cart_product{
            border:1px solid #ccc;
		}
	.cart_product>.product{
            display:flex;
			padding:10px;
			align-items:flex-start;
		}
	.cart_product>.product>.product-item{
            padding:0 0 0 20px;
		}
	.cart_product>.product>.product-item1{
           align-self:center;
		}
    .cart_product>.product>.product-item2{
        width:100px;
    }
	.cart_product>.product>.product-item2>img{
           width:100px;
		}
	.cart_product>.product>.product-item3,.cart_product>.product>.product-item4{
           width:200px;
		}
	.cart_product>.product>.product-item3>p{
            width:100%;
			 overflow: hidden;
            text-overflow: ellipsis;
           white-space: nowrap;
		}
	.product>.product-item5,.product>.product-item6,.product>.product-item7{
           width:140px;
		}
	.product>.product-item5>.new_price{
           font-size:18px;
		}
	.product>.product-item5>.old_price{
            color:#9c9c9c;
			font-size:14px;
			text-decoration:line-through;
		}
	.product>.product-item6>.count{
             display:inline-block;
			 width:30px;
			 height:30px;
			 box-sizing:border-box;
			 border:1px solid #aaa;
			 padding:1px 0;
             user-select:none;
			 text-align:center;
		}
	.product>.product-item6>input{
            width:60px;
			height:30px;
            box-sizing:border-box;
            text-align: center;
		}
	.product>.product-item8{
           width:120px;
		}
	.cart-bottom{
            height:60px;
			 display:flex;
			 align-items:center;
			 background:#ddd;
			 position:fixed;
			 bottom:0;
			 
		}
	.cart-bottom>.cart-item{
            text-align:center;
			line-height:60px;
		}
	.cart-bottom>.cart-item1{
            width:100px;
		}
	.cart-bottom>.cart-item2{
           width:100px;
		}
	.cart-bottom>.cart-item3{
           width:160px;
		}
	.cart-bottom>.cart-item4{
           width:100px;
		}
	.cart-bottom>.cart-item5{
		    margin-left:140px;
            width:200px;
		}
	.cart-bottom>.cart-item6{
            width:240px;
		}
    .cart-bottom>.cart-item5>span,.cart-bottom>.cart-item6>span{
        color:#f70738;
    }
	.cart-bottom>.cart-item7{
            width:160px;
			color:#fff;
			background:#666;
			font-size:20px;
			height:100%;
		}
		
</style>