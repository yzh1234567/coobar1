<template>
  <div >
    <index-header></index-header>
    <router-view></router-view>
    <side></side>
  </div>
</template>

<script>

// @ is an alias to /src
import indexHeader from '@/components/header/indexHeader'
import side from "@/components/side/side"
export default {
  components: {
    "index-header":indexHeader,
    side
  },
  methods:{
   
  },
  mounted() {
  }
}
</script>
