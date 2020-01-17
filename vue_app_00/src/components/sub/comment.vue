<template>
    <div class="app-comment">
        <div class="mui-card">
            <div class="mui-card-header"></div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <textarea placeholder="请吐槽最多120个字" maxlength="120" v-model="msg"></textarea>
                    <mt-button class="buttons" size="large" type="primary" @click="addcomment">发表评论</mt-button>
                </div>
            </div>
            <div class="mui-card-footer">
                <div class="cmt-list">
                    <div class="cmt-item" v-for="(item,i) in list" :key="item.id">
                        <div>第{{i+1}}楼 发表时间:{{item.ctime | dateFilter}}</div>
                        <div>{{item.content}}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    //在当前 comment.vue 单独引入提示框组件
    import {Toast} from "mint-ui";
    export default {
        data(){
            return {
                list:[],
                pno:0,
                pageSize:5,
                msg:"" //双向绑定评论内容
            }
        },
        created(){
            this.getMore();
            //this.addcomment();
        },
        methods:{
            //添加评论
            addcomment(){
                //*1-为添加评论绑定点击事件
                //*2-获取评论内容
                var m = this.msg;
                //trim()去除字符串两端空格 ""
                //*3-判断评论内容不能为空 ""  "   "
                //*4-评论为空提示错误信息
                var size = m.trim().length;
                if(size == 0){
                    Toast("评论内容不能为空");
                    return;
                }
                //*5-获取当前新闻nid
                var nid = this.$route.query.nid;
                //*6-发送ajax
                //1:创建参数对象 postData
                //stringify 将 js对象转换查询字符串
                var postData = this.qs.stringify({
                    nid:nid,
                    content:this.msg
                });
                //2:发送post 请求
                var url = "http://127.0.0.1:3000/";
                    url+="addcomment";
                this.axios.post(url,postData).then(result=>{
                    console.log(result.data);
                    //1:提示框 发表成功
                    Toast(result.data.msg);
                    //2:清空评论区域内容
                    this.msg = "";
                    //2.2:清空页码
                    this.pno = 0;
                    //2.3:清空原有数组
                    this.list = [];
                    //3:立即查看到评论结果
                    this.getMore();
                })
                //3:接收返回数据
                //4:在created()调用 
            },
            //评论的分页显示
            getMore(){
                this.pno++;
                var url = "http://127.0.0.1:3000/";
                url+="getComment?nid="+this.$route.query.nid;
                url+="&pno="+this.pno;
                url+="&pageSize="+this.pageSize;
                this.axios.get(url).then(result=>{
                    var rows = this.list.concat(result.data.data);
                    this.list = rows;
                });
            }
        },
    }
</script>
<style>
.app-comment>.mui-card>.mui-card-content>.mui-card-content-inner>.buttons{
    background-color: #000; 
}
</style>