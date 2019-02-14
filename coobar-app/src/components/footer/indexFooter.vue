<template>
    <div class="app-indexFooter">
        <div class="container">
            <!-- 我的承诺-->
            <div class="my_promise">
                 <div>
                     <div>食</div>
                     <div>
                         <p>食品安全</p>
                         <p>精挑细选,精益求精</p>
                     </div>
                 </div>
                 <div>
                     <div>鲜</div>
                     <div>
                         <p>新鲜自然</p>
                         <p>绿色生态,有机生产</p>
                     </div>
                 </div>
                 <div>
                     <div>品</div>
                     <div>
                         <p>品质保障</p>
                         <p>供货甄选,严格质检</p>
                     </div>
                 </div>
                 <div>
                     <div>优</div>
                     <div>
                         <p>无忧售后</p>
                         <p>假一赔十,举假立赔</p>
                     </div>
                 </div>
            </div>
            <!-- -->
           <div class="msg_guide msg_guide1">
               <ul class="item1">
                   <li>
                       买家帮助
                   </li>
                   <li>
                       <a href="javascript:;">新手指南</a>
                   </li>
                   <li>
                       <a href="javascript:;">购物流程</a>
                   </li>
                   <li>
                       <a href="javascript:;">常见问题</a>
                   </li>
               </ul>
               <ul class="item2">
                   <li>
                       配送服务
                   </li>
                   <li>
                       <a href="javascript:;">配送方式</a>
                   </li>
                   <li>
                       <a href="javascript:;">配送时间</a>
                   </li>
                   <li>
                       <a href="javascript:;">运费标准</a>
                   </li>
               </ul>
               <ul class="item3">
                   <li>
                       关于我们
                   </li>
                   <li>
                       <a href="javascript:;">关于coobar</a>
                   </li>
                   <li>
                       <a href="javascript:;">联系我们</a>
                   </li>
                   <li>
                       <a href="javascript:;">常见问题</a>
                   </li>
               </ul>
           </div>
            <!-- 信息指南2-->
            <div class="msg_guide2 msg_guide">
                <ul>
                    <li>
                        <a href="javascript:;">公益行动</a>
                        <span>|</span>
                    </li>
                    <li>
                        <a href="javascript:;">隐私政策</a>
                        <span>|</span>
                    </li>
                    <li>
                        <a href="javascript:;">商务合作</a>
                        <span>|</span>
                    </li>
                    <li>
                        <a href="javascript:;">人才招聘</a>
                    </li>
                </ul>
            </div>

           <!-- 版权所有-->
            <div class="my_copyright">
                <p>Copyright © 2018-2020 coobar 版权所有</p>
            </div>
        </div>
    </div>
</template>


<style scoped>
    .app-indexFooter{
    background:#00c65d;
}
    .container{
        width:1200px;
        margin:0 auto;
    }
/*我的承诺div*/
div.container>div{
    display:flex;
    justify-content: space-around;
}
div.my_promise{
     color:#fff;
    height:200px;
}
div.my_promise>div{
    text-align: center;
    line-height:80px;
}
div.my_promise>div>div:first-child{
    width:80px;height:80px;
    border:2px solid #1ad669;
    border-radius:33%;
    margin-top:10px;
    margin-left:auto;
    margin-right:auto;
    font-size:42px;
}
div.my_promise>div>div:nth-child(2)>p:first-child{
     height:33px;
     font-size:20px;
}
div.my_promise>div>div:nth-child(2)>p:nth-child(2){
     height:20px;
     font-size:14px;
}
/*信息指南*/
div.msg_guide>ul{
    list-style: none;
}
div.msg_guide1>ul>li:first-child{
    font-size:22px;
    margin-bottom:8px;
}
div.msg_guide>ul>li{
    color:rgba(255,255,255,0.6)
}
div.msg_guide>ul>li>a{
    color:rgba(255,255,255,0.6)
}
div.msg_guide>ul>li>a:hover{
    color:rgba(255,255,255,1)
}
/*信息指南2*/
div.msg_guide2>ul{
    display: flex;
    justify-content: center;
    padding:10px 0;
}
div.msg_guide2>ul>li>span{
    margin:0 8px 0 5px;
}
.my_copyright>p{
    padding:10px 0;
}
</style>