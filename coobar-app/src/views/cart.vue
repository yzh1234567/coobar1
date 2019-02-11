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
            <input type="checkbox" class="item2_son item2_son1">全选
            <span class="item2_son item2_son2">商品信息</span>
						<span class="item2_son item2_son3">商品规格</span>
            <span class="item2_son item2_son4">商品单价</span>
            <span class="item2_son item2_son5">商品数量</span>
            <span class="item2_son item2_son6">商品金额</span>
            <span class="item2_son item2_son7">更多操作</span>
        </p>
    </div>
    <ul class="cart_main">
		<li class="cart_product">
            <div class="product">
				<div class="product-item1">
					<input type="checkbox">
				</div>
				<div class="product-item product-item2">
					<img src="03.png" alt="">
				</div >
				<div class="product-item product-item3">
					<p>优品新疆板栗南瓜1kg,皮薄肉多,1213</p>
				</div>
				<div class="product-item product-item4">
					<p>大约5个</p>			      
				</div>
                <div class="product-item product-item5">
                    <p class="new_price">现价:56.00</p>
                    <p class="old_price">原价:127.00</p>
                </div>
                <div class="product-item product-item6">
                    <button class="count">-</button>
                    <input type="text">
                    <button class="count">+</button>
                </div>
				<div class="product-item product-item7">
					<span>￥:73.00</span>
				</div>
                <div class="product-item product-item8">
                    <p>加入收藏夹</p>
                    <p>删除</p>
                </div>
            </div>
        </li>
    </ul>
    <div class="cart-bottom">
		<div class="cart-item cart-item1">
			<input type="checkbox">全选
		</div>
        <span class="cart-item cart-item2">删除</span>
        <span class="cart-item cart-item3">移入收藏夹</span>
        <span class="cart-item cart-item4">分享</span>
        <span class="cart-item cart-item5">总计商品 <span>11</span> 件</span>
        <span class="cart-item cart-item6">合计: <span>￥1234.00</span></span>
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
         }
     },
     created(){
         this.queryCart();
     },
     method:{
        //  查询购物车
        queryCart(){
             this.axios.get("http://localhost:3000/queryCart").then((res)=>{
                    this.products=res.data
            })    
        },
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
	.cart-bottom>.cart-item7{
            width:160px;
			color:#fff;
			background:#666;
			font-size:20px;
			height:100%;
		}
		
</style>