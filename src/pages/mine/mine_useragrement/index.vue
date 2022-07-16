<template>
  <view>
  <view class='title'>
    <text>免责声明</text>
  </view>
  <view class='divLine'></view>
  <view class='boldContent'>
    <text>一. 总则</text>
  </view>
  <view class='normalContent'>
    <text>百度网民权益保障计划（以下简称“保障计划”）旨在为网民营造一个安全、可靠、诚信的网络环境，让网民放心地使用百度搜索。</text>
  </view>


  <view class='divLine'></view>
  <view class='boldContent'>
    <text>二. 用户应符合条件</text>
  </view>
  <view class='normalContent'>
    <text>1. 用户应为百度注册用户，且仅限于自然人；</text>
  </view>
  <view class='normalContent'>
    <text>2. 用户点击相关网站链接时其百度账号处于已登录状态；</text>
  </view>
  <view class='normalContent'>
    <text>3. 用户点击本协议第三条第（二）款定义的纳入保障计划范围的网站后，自相关网站经营者处购买商品或者接受服务（即发生实质交易）并遭受了直接经济损失；</text>
  </view>
  <view class='normalContent'>
    <text>4. 用户按照本条第（六）款向百度提交清晰且足以辨识的材料.</text>
  </view>

  <view class='divLine'></view>
  <view class='boldContent'>
    <text>三. 属于保障范围的情形</text>
  </view>
  <view class='normalContent'>
    <text>1. 网站系钓鱼、诈骗网站；</text>
  </view>
  <view class='normalContent'>
    <text>2. 网站假冒他人企业行政许可资质、假冒他人官方网站。</text>
  </view>


  <view class='divLine'></view>
  <view class='boldContent'>
    <text>四. 不属于保障范围的情形</text>
  </view>
  <view class='normalContent'>
    <text>2. 用户不能提供证据或证据不足的；</text>
  </view>
  <view class='normalContent'>
    <text>4. 按照一般理性消费者的判断标准，用户对来自网站经营者的商品或服务风险的判断存在故意、重大过失而导致经济损失的；</text>
  </view>
  <view class='normalContent'>
    <text>9. 用户有损害百度商誉、扰乱百度正常经营秩序言行的；</text>
  </view>
  <view class='normalContent'>
    <text>12. 百度对用户的保障结束后，用户又追加保障申请的；</text>
  </view>

  <view class='divLine'></view>
  <view class='normalContent'>
    <text>注：</text>
  </view>
  <view class='boldContent'>
    <text>1. 因本协议产生的一切争议的解决均适用中华人民共和国法律。</text>
  </view>
  <view class='boldContent'>
    <text>3. 如本协议的任何条款被视作无效或无法执行，不影响其余条款的法律效力。</text>
  </view>
  </view>
</template>

<script>
export default {
  name: "index"
}
</script>

<style scoped>
/* client/pages/text/text.wxss */

.title {
  width: 100%;
  background: #fff;
  padding-bottom: 30rpx;
  font-weight: bold;
  font-size: large;
}

.boldContent {
  width: 100%;
  background: #fff;
  padding-bottom: 10rpx;
  padding-top: 10rpx;
  font-weight: bolder;
  font-size: small;
}

.divLine {
  background: #e0e3da;
  width: 100%;
  /* border: 1px solid rgba(0, 0, 0, .1); */
  height: 1px;
}

.normalContent {
  text-indent: 20rpx;
  text-align: left;
  width: 100%;
  background: #fff;
  font-size: small;
  padding-bottom: 10rpx;
  padding-top: 10rpx;
  /* border: 1px solid rgba(0, 0, 0, .1); */
}
</style>