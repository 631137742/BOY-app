<template>
    <!--先创建一个根元素 div-->
    <div class="app-exam01">
        <h1 @click="jump1">跳转 NewsList.vue</h1>
        <h1 @click="jump2">跳转 GoodList.vue</h1>
        <h1 @click="jump3">带参数跳转</h1>
        <h3>练习组件创建</h3>
    </div>
</template>
<script>
    export default {
        data(){
            return {}
        },
        methods:{
            jump1(){
                this.$router.push("/NewsList")
            },
            jump2(){
                this.$router.push("/GoodList")
            },
            jump3(){
                this.$router.push("/NewsList?nid=6")
            }
        }
    }
</script>
<style>
    .app-exam01{
        color:red;
        font-size:16px;
    }
</style>