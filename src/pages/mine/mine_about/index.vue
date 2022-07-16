<template>
  <view>
    <view class="content">
      <image src="/static/icons/home.png" class="tupian"></image>
      <view>
        <text class="title">
          安居租房小程序
        </text>
      </view>
    </view>
    <view class="title1">
      <text class="title2">安居租房小程序为租房者提供房源信息搜索、浏览功能、为业主提供房源委托等功能，让你的房产交易更为便捷。</text>

    </view>
    <view class="title3">
      <text class="title2">客服官方电话:12345678</text>
    </view>
  </view>
</template>

<script>
export default {
  name: "index"
}
</script>

<style scoped>
.content {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}
.tupian{
  height: 220rpx;
  width: 220rpx;
  left: 265rpx;
  margin-top: 250rpx;
}
.title{
  padding-top: 15px;
  padding-bottom: 15px;
  padding-left: 25rpx;
  font-size: 26rpx;
  font-weight: bold;
}
.title1{
  margin-top: 420rpx;
  margin-left: 40rpx;
  margin-right: 40rpx;
}
.title3{
  margin-top: 10rpx;
  margin-left: 40rpx;
  margin-right: 40rpx;
}
.title2{
  font-size: 30rpx;
}

</style>