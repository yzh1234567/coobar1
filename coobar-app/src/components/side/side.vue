<template>
    <div class="app-side">
        <div class="side" v-show="top>200">
            <a href="#" title="返回顶部">
                 <img src="http://coobar.applinzi.com/img/icon/返回顶部.png">
            </a>
            <router-link to="/" title="返回主页">
                   <img src="http://coobar.applinzi.com/img/icon/主页.png">
            </router-link>
        </div> 
    </div>
</template>

<script>
export default {
     data(){
         return{
             top:0
         }
     },
     mounted(){
        this.fn();
     },
     methods:{
           fn(){
            document.addEventListener('scroll',()=>{
                 this.top=window.pageYOffset
            }, false);  
    }
     },
}
</script>

<style scoped>
      .side{
          width:60px;
          height:200px;
          display:flex;
          flex-direction:column;
          justify-content:flex-end;
          align-items:center;
          background:#555;
          position:fixed;
          right:10px;bottom:100px;
      }
      .side>a{
          display:flex;
          width:40px;
          height:40px;
          justify-content:center;
          align-items:center;
      }
</style>