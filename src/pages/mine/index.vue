<template>
    <view>我的
        <view @click="gotoCollect">我的收藏</view>
        <view @click="gotoBeholder">申请入驻</view>
    </view>

</template>

<script>
    export default {
        name: "index",
        data(){
            return{

            }
        },
        methods:{
            gotoCollect(){
                uni.navigateTo({
                    url:"./mine_collect/index"
                })
            },
            gotoBeholder(){
                uni.navigateTo({
                    url:"./mine_beholder/index"
                })
            }
        }
    }
</script>

<style scoped>

</style>
