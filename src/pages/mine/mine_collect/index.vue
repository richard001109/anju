<template>
    <view>
        <view class="title">我的收藏</view>
        <view class="content" v-for="item in houses" :key="item.id">
            <image mode="widthFix" :src="item.imgurl"></image>

        </view>
    </view>
</template>

<script>
    export default {
        name: "index",
        data(){
            return{
                houses:[{
                    imgurl:"https://tse1-mm.cn.bing.net/th/id/OIP-C.n0_p3rYRuofABd3XudbZnAHaEo?w=278&h=180&c=7&r=0&o=5&dpr=1.12&pid=1.7",
                    title:"大平层，户型方正，碧桂园时代倾城",
                    shi:3,
                    ting:2,
                    area:184.94,
                    orientation:"南"

                },
                    {
                        imgurl:"https://tse2-mm.cn.bing.net/th/id/OIP-C.1CyIihS--FMRpXQsydJWJQHaEo?w=278&h=180&c=7&r=0&o=5&dpr=1.12&pid=1.7",
                        title:"大平层，户型方正，碧桂园时代倾城",
                        shi:3,
                        ting:2,
                        area:184.94,
                        orientation:"南"

                    },
                    {
                        imgurl:"https://tse1-mm.cn.bing.net/th/id/OIP-C.irADmH6QxTb8VQKXtZE5PwHaEo?w=300&h=187&c=7&r=0&o=5&dpr=1.12&pid=1.7",
                        title:"大平层，户型方正，碧桂园时代倾城",
                        shi:3,
                        ting:2,
                        area:184.94,
                        orientation:"南"

                    },
                    {
                        imgurl:"https://tse4-mm.cn.bing.net/th/id/OIP-C.kRAf0rLDyb8XhT2JKYUwzAHaEK?w=287&h=180&c=7&r=0&o=5&dpr=1.12&pid=1.7",
                        title:"大平层，户型方正，碧桂园时代倾城",
                        shi:3,
                        ting:2,
                        area:184.94,
                        orientation:"南"

                    },
                    {
                        imgurl:"https://tse3-mm.cn.bing.net/th/id/OIP-C.ICOKxTBjrWt_-YskkYRNXgHaEo?w=246&h=180&c=7&r=0&o=5&dpr=1.12&pid=1.7",
                        title:"大平层，户型方正，碧桂园时代倾城",
                        shi:3,
                        ting:2,
                        area:184.94,
                        orientation:"南"

                    }]
            }
        }
    }
</script>

<style scoped>

</style>
