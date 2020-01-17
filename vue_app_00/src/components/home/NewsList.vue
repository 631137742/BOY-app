<template>
    <div class="app-newslist">
        <ul class="mui-table-view">
            <li class="mui-table-view-cell mui-media" v-for="item in list" :key="item.id">
                <router-link :to="'/NewsInfo?nid='+item.id">
                    <img class="mui-media-object mui-pull-left" :src="`http://127.0.0.1:3000/`+item.img_url">
                    <div class="mui-media-body">
                        {{item.title}}
                        <p class='mui-ellipsis'>
                            <span>{{item.ctime | datetimeFilter}}</span>
                            <span>点击{{item.point}}次</span>
                        </p>
                    </div>
                </router-link>
            </li>
        </ul>
        <mt-button class="goods-btn" type="primary" size="large" @click="getMore">加载更多</mt-button>
    </div>
</template>
<script>
    export default {
        data(){
            return {
                list:[],
                pno:1,      //当前页码  
                pageSize:7  //
            }
        },
        methods:{
            //加载更多
            getMore(){
                //1:修改当前页码+1
                this.pno++;
                //2:发送请求get
                var url = "http://127.0.0.1:3000";
                url+="/newslist?pno="+this.pno;
                url+="&pageSize="+this.pageSize;
                //3:获取下一页数据保存 list
                this.axios.get(url).then(result=>{
                    //3.1:拼接两个数组
                    var rows = this.list.concat(result.data.data);
                    //3.2:赋值list
                    this.list = rows;
                    //this.list = result.data.data;
                });
            },
            //mui查找
            getnewsList(){
                var url="http://127.0.0.1:3000/newslist";
                this.axios.get(url).then(result=>{
                    console.log(result.data.data);
                    this.list = result.data.data;
                })
            }
        },
        created(){
          //console.log(this.$route.query.nid);
          this.getnewsList();
        }
    }
</script>
<style>
    .app-newslist li .mui-ellipsis{
        display:flex;
        font-size:12px;
        color:#666;
        justify-content:space-between;
    }
    .app-newslist .goods-btn{
        color: #666;
        background-color: #000
    }
</style>