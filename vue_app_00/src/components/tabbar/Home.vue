<template>
    <div class="app-home">
        <!--顶部导航条-->
        <!--轮播图-->
        <mt-swipe>
            <mt-swipe-item v-for="item in list" :key="item.id">
                <img :src="item.img_url">
            </mt-swipe-item>
        </mt-swipe>
        <!--九宫格-->
        <ul class="mui-table-view mui-grid-view mui-grid-9">
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/NewsList">
                    <img src="../../img/menu1.png">
                    <div class="mui-media-body">新闻咨讯</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/GoodList">
                    <img class="menu2" src="../../img/menu2.png">
                    <!-- <span class="mui-badge"></span> -->
                    <div class="mui-media-body">商品</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><router-link to="/ShopCart">
                    <img src="../../img/menu3.png">
                    <div class="mui-media-body">购物车</div></router-link></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                    <img src="../../img/menu4.png">
                    <div class="mui-media-body">支付</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                    <img src="../../img/menu5.png">
                    <div class="mui-media-body">搜索</div></a></li>
            <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="#">
                    <img src="../../img/menu6.png">
                    <div class="mui-media-body">更多</div></a></li>
		</ul> 
        <!--tabbar-->
        
    </div>
</template>
<script>
    export default {
        data(){
            return {
                list:[]
            }
        },
        methods:{
            handleImage(){
                //1:发送ajax请求给服务器
                 var url="http://127.0.0.1:3000/imageList";
                 this.axios.get(url).then(result=>{
                     this.list = result.data;
                 });
                //2:接收服务器返回结果
                //3:将结果保存list
            }
         },
        created(){
            this.handleImage();
        },
    }
</script>

<style>
    /*轮播图*/ 
    .app-home .mint-swipe{
        height:150px;
    }
    .app-home .mint-swipe img{ width:100%; }
    /*九宫格*/
    .app-home .mui-grid-9 img{
        width: 60px;
        height: 60px;
    }
    .app-home .mui-grid-9 .menu2{
        width: 100%;
    }
    .app-home .mui-grid-view.mui-grid-9{
        background-color:#fff;
    }
</style>