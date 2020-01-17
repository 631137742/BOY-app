<template>
 <div class="app-container">
    <!--src/App.vue  50-->
    <!-- 1:添加公共组件 Home.vue/Header-->
    <mt-header class="mt-header" fixed title="BOY商城"></mt-header>
    <!-- 2:占位符用来显示其它的组-->
    <router-view></router-view>
    <!-- 3:添加公共组件 tabbar-->
    <nav class="mui-bar mui-bar-tab">
        <router-link class="mui-tab-item mui-active" to="/Home">
            <span class="mui-icon mui-icon-home"></span>
            <span class="mui-tab-label">首页</span>
        </router-link>
        <router-link class="mui-tab-item" to="/Login">
            <span class="mui-icon mui-icon-contact"></span>
            <span class="mui-tab-label">会员</span>
        </router-link>
        <router-link class="mui-tab-item" to="/ShopCart">
            <span class="mui-icon mui-icon-extra mui-icon-extra-cart">
                <span class="mui-badge">
                    {{$store.getters.optCartCount}}
                </span>
            </span>
            <span class="mui-tab-label">购物车</span>
        </router-link>
        <a class="mui-tab-item" href="#tabbar-with-map">
            <span class="mui-icon mui-icon mui-icon-search"></span>
            <span class="mui-tab-label">搜索</span>
        </a>
	</nav>
 </div>
</template>

<style>
.app-container{
    padding-top:40px;
    padding-bottom:50px;
    overflow-x:hidden;
}
.app-container>.mt-header{
    background-color:#000; 
}
nav.mui-bar-tab {
    background-color: #000;
}
.mui-bar-tab .mui-tab-item-tao.mui-active {
    color: #666;
}
.mui-bar-tab .mui-tab-item-tao {
    display: table-cell;
    overflow: hidden;
    width: 1%;
    height: 50px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #666;
}
.mui-bar-tab .mui-tab-item-tao .mui-icon {
    top: 3px;
    width: 24px;
    height: 24px;
    padding-top: 0;
    padding-bottom: 0;
}

.mui-bar-tab .mui-tab-item-tao .mui-icon~.mui-tab-label {
   font-size:11px;
   display:block;
   overflow:hidden;
   text-overflow:ellipsis;

}
</style>
