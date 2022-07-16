<template>
<view>
  <view class="container">
    <image src="/static/images/头像.png" class="img" mode="widthFix"></image><text class="text1" user-select="true">用户昵称</text>
    <button class="btn1" aria-setsize="mini">登录/退出</button>
  </view>
  <view class='navs'>
    <view class='nav-item'>
      <image class="nav-image" src="/static/images/收藏.png" @click="gotoCollect"/>
      <text @click="gotoCollect">收藏</text>
    </view>
    <view class='nav-item'>
      <image class="nav-image" src="/static/images/关注.png" @click="gotoAttention"/>
      <text @click="gotoAttention">关注</text>
    </view>
    <view class='nav-item'>
      <image class="nav-image" src="/static/images/足迹.png" @click="gotoFoot"/>
      <text @click="gotoFoot"> 足迹</text>
    </view>
  </view>

  <view class="hr"></view>
  <view class='item'  @click="gotoBeholder">
    <view class="title">申请入住</view>
    <view class="detail2">
      <text>></text>
    </view>
  </view>
  <view class="line"></view>

  <view class='item'>
    <view class="title">我的店铺</view>
    <view class="detail2">
      <text>></text>
    </view>
  </view>

  <view class="hr"></view>
  <view class='item' @click="gotoOurs">
    <view class="title">关于我们</view>
    <view class="detail2">
      <text> ></text>
    </view>
  </view>
  <view class="line"></view>
  <view class="item" @click="gotoUsers">
    <view class="title">用户协议</view>
    <view class="detail2">
      <text> ></text>
    </view>
  </view>
  <view class="line"></view>
  <view class="item">
    <view class="title">意见反馈</view>
    <view class="detail2">
      <text> ></text>
    </view>
  </view>
  <view class="line"></view>
  <view class="item">
    <view class="title">设置</view>
    <view class="detail2">
      <text> ></text>
    </view>
  </view>
  <view class="hr"></view>
</view>
</template>

<script>
export default {
  name: "index",
  data: {
    return:{
      imgSrc: '/static/images/头像.png',
      imgSrc1: '/static/images/收藏.png',
      imgSrc2: '/static/images/关注.png',
      imgSrc3: '/static/images/足迹.png',
    },
  },
  methods: {
    gotoCollect() { //收藏
      uni.navigateTo({
        url: "./mine_collect/index"
      })
    },
    gotoAttention() { //关注
      uni.navigateTo({
        url: "./mine_collect/index"
      })
    },
    gotoFoot() { //足迹
      uni.navigateTo({
        url: "./mine_collect/index"
      })
    },
    gotoBeholder() {  //申请入住
      uni.navigateTo({
        url: "./mine_beholder/index"
      })
    },
    loout() { //登录退出
      uni.navigateTo({
        url: ""
      })
    },
    gotoUsers() { //关于我们
      uni.navigateTo({
            url: "./mine_useragrement/index"
          }
      )
    },
    gotoOurs() {  //用户协议
      uni.navigateTo({
            url: "./mine_about/index"
          }
      )
    }
  }
}
</script>

<style scoped>
.container {
  padding: 100rpx;
  background-color: rgb(15, 102, 156);
}
.img{
  width: 140rpx;
  margin-right: 500rpx;
}
.text1{
  margin-top: -200rpx;
  /*margin-left: 200rpx;*/
  background-color: rgba(52, 158, 161, 0.705);
}
.btn1{
  height: 60rpx;
  width: 200rpx;
  margin-left: 360rpx;
  margin-top: -120rpx;
  font-size:30rpx;
  /*text-align: center;*/
  line-height: 50rpx;
}
.container1-group .container1{
  width: 100rpx;
  height: 70rpx;
  text-align: center;
}
.container1-group .container1 image{
  width: 70rpx;
  height: 70rpx;
}

.navs {
  padding-top: 35rpx;
  display: flex;
}
.nav-item {
  width: 300rpx;
  display: flex;
  align-items: center;
  flex-direction: column;
  /* padding: 20rpx; */
}
.nav-item .nav-image {
  width: 55rpx;
  height: 55rpx;
  /* margin: 5rpx; */
}
.nav-item text {
  margin-top: 20rpx;
  font-size: 28rpx;
  color: gray;
}
.bg {
  height: 150px;
  background-color: #d53e37;
}

.head {
  display: flex;
  flex-direction: column;
}

.headIcon {
  display: flex;
  justify-content: center;
}

.login {
  display: flex;
  color: #fff;
  font-size: 15px;
  margin-top: 15rpx;
  justify-content: center;
}

.button {
  margin: 10px;
  font-size: 14px;
}

.head image {
  border-radius: 50%;
}

.hr {
  width: 100%;
  height: 15px;
  background-color: #f4f5f6;
}

.item {
  display: flex;
  flex-direction: row;
}

.title {
  padding-top: 15px;
  padding-bottom: 15px;
  padding-left: 15px;
  font-size: 15px;
}

.detail2 {
  font-size: 15px;
  position: absolute;
  right: 10px;
  height: 50px;
  line-height: 50px;
  color: #888;
}

.line {
  border: 1px solid #ccc;
  opacity: 0.2;
}
</style>
