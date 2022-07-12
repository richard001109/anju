<template>
    <scroll-view @scrolltolower="handleToLower" scroll-y scroll-x class="mine_collect">
        <view class="list" v-for="item in houses" :key="item.id" @click="lookdetail">
            <view class="list_img">
                <image class="img" :src="item.imgurl" mode="widthFix"></image>
            </view>
            <view class="list_info">
                <view class="list_btn">
                    <view class="list_attention">取消关注</view>
                </view>
                <view class="list_title">{{item.title}}</view>
                <view class="list_content">{{item.shi}}室{{item.ting}}厅 </view>
                <view class="list_content">{{item.area}}m² </view>
                <view class="list_content">朝向：{{item.orientation}}</view>
                <view class="list_price">{{item.price}}元/月</view>
            </view>
        </view>
    </scroll-view>
</template>

<script>
    export default {
        name: "index",
        data(){
            return{
                houses:[
                    {
                    imgurl:"C://Users//ASUS//Desktop//06.jpeg",
                    title:"大平层，户型方正，碧桂园时代倾城",
                    shi:3,
                    ting:2,
                    area:184.94,
                    orientation:"南",
                    price:2000

                },
                    {
                        imgurl:"https://tse3-mm.cn.bing.net/th/id/OIP-C.DvFZMIDYIXFRzqZ04GAEUgHaHa?w=177&h=180&c=7&r=0&o=5&dpr=1.12&pid=1.7",
                        title:"大平层，户型方正，碧桂园时代倾城",
                        shi:3,
                        ting:2,
                        area:184.94,
                        orientation:"南",
                        price:2000

                    },
                    {
                        imgurl:"",
                        title:"大平层，户型方正，碧桂园时代倾城",
                        shi:3,
                        ting:2,
                        area:184.94,
                        orientation:"南",
                        price:2000

                    },
                    {
                        imgurl:"",
                        title:"大平层，户型方正，碧桂园时代倾城",
                        shi:3,
                        ting:2,
                        area:184.94,
                        orientation:"南",
                        price:2000

                    },
                    {
                        imgurl:"",
                        title:"大平层，户型方正，碧桂园时代倾城",
                        shi:3,
                        ting:2,
                        area:184.94,
                        orientation:"南",
                        price:2000

                    }]
            }
        },
        methods:{
            handleToLower(){
                uni.showToast({
                    title:"没有数据了",
                    icon:"none"
                })
                console.log("end!!!");
            },
            lookdetail(){
                console.log("detail");
            }
        },
        mounted(){
            //动态修改页面标题
            uni.setNavigationBarTitle({title:"我的收藏"})
        }
    }
</script>

<style scoped lang="scss">
    .mine_collect {
        padding: 10rpx;
        width: 100%;
        .list {
            padding: 10rpx 0;
            display: flex;
            border-bottom: 1rpx solid #ccc;
            .list_img {
                flex: 1;
                padding: 10rpx;
                /*width: 33.3%;*/
                image {
                    width: 200rpx;
                    height: 200rpx;
                    /*display: block;*/
                }
            }

            .list_info {
                flex: 2;
                padding: 0 10 rpx;
                .list_title {
                    font-size: 30 rpx;
                    color: #000;
                    padding: 10rpx 0 ;
                }

                .list_content {
                    padding: 10rpx 0 ;
                    font-size: 24 rpx;
                }

                .list_price {
                    padding: 10rpx 0 ;
                    color: $color;
                }

                .list_btn {
                    padding: 40 rpx;
                    display: flex;
                    justify-content: flex-end;
                    .list_attention {
                        color: $color;
                        border: 1rpx solid $color;
                        padding: 10 rpx;
                    }
                }
            }
        }
    }

</style>
