<template>
  <view class="recommend">
    <view class="swiper-container">
      <swiper circular autoplay interval=3000 duration=1000  :current="swiperCurrent" @change="swiperChange" class="swiper">
        <block v-for="(item,index) in slider" :key="index">
          <swiper-item>
            <image :src="item.picUrl" class="img"></image>
          </swiper-item>
        </block>
      </swiper>
      <view class="dots">
        <text>{{topSwiperIndex+1}}/{{slider.length}}</text>
      </view>
    </view>

    <view class='navs'>
      <view class='nav-item'>
        <text class="nav-item1">3680元/月</text>
      </view>
      <view>
        <image class="nav-image" src="/static/images/收藏.png"/>
      </view>
      <text class="shoucang">收藏</text>
    </view>
    <view class="nav-item2">
      <text class="details-x">地理位置:南岸南坪亚太商古二期</text>
    </view>
    <view class="hr"></view>
    <view class="details-v" >
      <view class="clearfix flex grey gridXt">
        <text class="sub">南</text>
        <text class="sub">108</text>
        <text class="sub">低/6层</text>
        <text class="sub">随时入住</text>
      </view>
    </view>
    <view class="details-v">
      <view class="clearfix flex grey gridXt">
        <text class="sub1">朝向</text>
        <text class="sub1">面积</text>
        <text class="sub1">楼层</text>
        <text class="sub1">入住时间</text>
      </view>
    </view>

    <view class="details-v">
      <view class="clearfix flex grey gridXt">
        <text class="sub2" id="sub21">集中供暖</text>
        <text class="sub2" id="sub21">民水民电</text>
        <text class="sub2" id="sub21">随时看房</text>
      </view>
    </view>
    <view class="details-v">
      <view class="clearfix flex grey gridXt">
        <text class="sub3">装修:暂无数据</text>
        <text class="sub3">电梯:有</text>
        <text class="sub3">布局:3室2厅1卫</text>
      </view>
    </view>
    <view class="details-v">
      <view class="clearfix flex grey gridXt">
        <text class="sub3">看房:随时可看</text>
        <text class="sub3">车位:有</text>
        <text class="sub3">类型:公租房</text>
      </view>
    </view>
    <view class="hr"></view>
    <!--商品详情-->
    <view class='details_box'>
      <view class="house">
        <view>房屋配置</view>
      </view>
      <view>
        <view>
          <text class="details-s">电冰箱</text>
          <text class="details-s">电冰箱</text>
          <text class="details-s">电冰箱</text>
          <text class="details-s">电冰箱</text>
        </view>
      </view>
    </view>
    <view class="hr"></view>
    <view class="containers">
      <view class="house1">用户评价</view>
      <view >
        <!--  评价 -->
        <view class="evaluate">
          <view class="evaluateCenter">
            <view class="evaluateItem" v-for="(item, index) in list" :key="index">
              <view class="evaluateTip dfsb">
<!--                <view class="imgs"><image :src="item.image" mode="widthFix"></image></view>-->
                <view class="right">
                  <view class="righttip">{{ item.name}}</view>
                  <view class="bottom dfsb">
                    <view class="star">
                      <text>4.5分</text>
                      <uni-rate size='12' activeColor='#fd9130' :is-fill="false" readonly disabledColor='' allow-half :value="item.score|| 3.5" />
                    </view>
                    <view class="time">{{item.time}}</view>
                  </view>
                </view>
              </view>
              <view class="evaluateText" :class="{lineclamp3:item.contentAll}"> {{item.content}} </view>
              <view class="" v-if="item.isMore">
                <view class="rightText" v-if="item.contentAll" @click="changeAllFun(item, index)">全部</view>
                <view class="rightText" v-else  @click="changeAllFun(item, index)">收起</view>
              </view>
              <view class="bottomImg">
                <image src="/static/ticket/huanleguSamll.png" mode="scaleToFill"></image>
                <text>{{item.title}}</text>
              </view>
            </view>
          </view>
        </view>
      </view>
    </view>



    <view class="hr"></view>

    <view class="goodsaction" >
      <view class="name">
        <view class="text2">杨</view>
      </view>
      <view style="font-size: 26rpx">
        <view class="names1">
          杨先生
        </view>
        <view class="names2">
          房产经济人
        </view>
      </view>
      <view class="action_btn">
        <button class="btn_left">在线咨询</button>
        <button class="btn_right">电话咨询</button>
      </view>
    </view>
  </view>
</template>

<script>
export default {
  name: "details",
  data() {
    return {
      topSwiperIndex: 0,
      slider: [{
        id: 1,
        picUrl: '/static/images/1.png'
      },
        {
          id: 2,
          picUrl: '/static/images/2.png'
        },
        {
          id: 3,
          picUrl: '/static/images/3.png'
        },
        {
          id: 4,
          picUrl: '/static/images/4.png'
        }
      ],
      list:[
        {
          name: '马保国',
          title: '',
          image: 'https://slzh-oss.oss-cn-beijing.aliyuncs.com/usercenter/template/2c94809a787cec070179e01ec0ba02a9.jpg',
          score: 4.5,
          time: '2021.06.06',
          content: '服务好，景色好，山河锦绣，树木茂盛，空气清新，鸟语花香，人杰地灵服务好，景色好，山河锦绣，树木茂盛，空气清新，鸟语花香，人杰地灵服务好，景色好，山河锦绣，树木茂盛，空气清新，鸟语花香，人杰地灵服务好，景色好，山河锦绣，树木茂盛，空气清新，鸟语花香，人杰地灵服务好，景色好，山河锦绣，树木茂盛，空气清新，鸟语花香，人杰地灵',
          imageList:[
            { url:'https://slzh-oss.oss-cn-beijing.aliyuncs.com/usercenter/template/2c94809a787cec070179e0234e7902ab.png' },
            { url:'https://slzh-oss.oss-cn-beijing.aliyuncs.com/usercenter/template/2c94809a787cec070179e0234e7902ab.png' },
            { url:'https://slzh-oss.oss-cn-beijing.aliyuncs.com/usercenter/template/2c94809a787cec070179e0234e7902ab.png' },
            { url:'https://slzh-oss.oss-cn-beijing.aliyuncs.com/usercenter/template/2c94809a787cec070179e0234e7902ab.png' },
            { url:'https://slzh-oss.oss-cn-beijing.aliyuncs.com/usercenter/template/2c94809a787cec070179e0234e7902ab.png' },
            { url:'https://slzh-oss.oss-cn-beijing.aliyuncs.com/usercenter/template/2c94809a787cec070179e0234e7902ab.png' },
            { url:'https://slzh-oss.oss-cn-beijing.aliyuncs.com/usercenter/template/2c94809a787cec070179e0234e7902ab.png' },
          ]
        },
        {
          name:'留念&伤感1999',
          title: '恋曲1999',
          image:'https://slzh-oss.oss-cn-beijing.aliyuncs.com/usercenter/template/2c94809a787cec070179e01f3cb402aa.jpg',
          score:4.5,
          time:'2021.06.06',
          content:'服务好服务好服务好服务好，景色好，山河锦绣，树木茂盛树木茂盛树木茂盛树木茂盛树木茂盛树木茂盛树木茂盛树木茂盛树木茂盛树木茂盛树木茂盛树木茂盛，空气清新，鸟语花香，人杰地灵',
          imageList:[
            { url:'https://slzh-oss.oss-cn-beijing.aliyuncs.com/usercenter/template/2c94809a787cec070179e0234e7902ab.png' },
            { url:'https://slzh-oss.oss-cn-beijing.aliyuncs.com/usercenter/template/2c94809a787cec070179e0234e7902ab.png' },
            { url:'https://slzh-oss.oss-cn-beijing.aliyuncs.com/usercenter/template/2c94809a787cec070179e0234e7902ab.png' },
            { url:'https://slzh-oss.oss-cn-beijing.aliyuncs.com/usercenter/template/2c94809a787cec070179e0234e7902ab.png' },
            { url:'https://slzh-oss.oss-cn-beijing.aliyuncs.com/usercenter/template/2c94809a787cec070179e0234e7902ab.png' },
            { url:'https://slzh-oss.oss-cn-beijing.aliyuncs.com/usercenter/template/2c94809a787cec070179e0234e7902ab.png' },
            { url:'https://slzh-oss.oss-cn-beijing.aliyuncs.com/usercenter/template/2c94809a787cec070179e0234e7902ab.png' },
          ]
        },
      ]
    }
  },
  created() {
    this.getlist()
  },
  onLoad() {
    this.getlist()
  },
  methods:{
    getlist(){
      this.list.forEach(item=>{
        if(item.content.length > 60){
          item.isMore = true
          item.contentAll = true
        }else{
          item.isMore = false
          item.contentAll = false
        }
      })
    },
    changeAllFun(item, index){
      let list = JSON.parse(JSON.stringify(this.list));
      list.forEach((elem,ind)=>{
        if(index === ind){
          elem.contentAll = !elem.contentAll
        }
      })
      this.list  =  list
    }
  }
}

</script>

<style lang="scss" scoped>
.swiper-container {
  position: relative;
  height: 400rpx;
  width: 100%;
  margin: 0rpx auto 0rpx;
}

.swiper-container .swiper {
  height: 100%;
  width: 100%;
}

.swiper-container .swiper .img {
  width: 100%;
  height: 100%;
  border-radius: 10rpx;
}

.swiper-container .dots {
  position: absolute;
  top: 90%;
  left: 50%;
  transform: translate(-50%, -90%);
  display: flex;
  justify-content: center;
}

/* 圆形加数字 */
 .swiper-container .dots {
  margin: 0 10rpx;
  width: 60rpx;
  height: 30rpx;
  background: rgba(0, 0, 0, 0.25);color: white;
  border-radius: 50%;
  transition: all .2s;
  font: 300 18rpx/28rpx "SimHei";
  text-align: center;
}

.navs {
  height: 80rpx;
  width: 100%;
  right: 50rpx;
  display: flex;
}
.nav-item {
  width: 160rpx;
  height: 50rpx;
  margin-top: 20rpx;
  margin-left: 45rpx;
}
.nav-item1 {
  color: #ff6666;
  font-size: 30rpx;
  font-weight: bolder ;
}
.nav-image {
  margin-left: 300rpx;
  margin-top: 20rpx;
  width: 50rpx;
  height: 50rpx;
}
.shoucang{
  margin-top: 22rpx;
  margin-left: 20rpx;
  width: 150rpx;
  height: 50rpx;
  right: 30%;
}
.nav-item2{
  padding-bottom: 10rpx;
  border-bottom: 1rpx solid #F6F6F6;
}
.details-x{
  width: 100%;
  font-size: 32rpx;
  position: center;
  margin-left: 40rpx;
}

.details-v{
  border-top:0px solid #F6F6F6;
  background: #fff;
  padding:5px 15px;
  margin-left: 50rpx
}

.hr {
  width: 100%;
  height: 8rpx;
  background-color: #f4f5f6;
}

.fenxiang button::after {
  border: none;
}


.flex {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  width: 100%;
}

.flex>.sub {
  -webkit-box-flex: 1;
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 1;
  overflow: hidden;
  font-weight: bold;
  color: rgba(73, 66, 66, 0.77);
}
.flex>.sub1 {
  -webkit-box-flex: 1;
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 1;
  overflow: hidden;
  font-weight: bolder;
  color: rgba(65, 46, 46, 0.85);
  font-size: 26rpx;
}
.flex>.sub2 {
  -webkit-box-flex: 1;
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 1;
  overflow: hidden;
  font-weight: bolder;
  color: rgba(65, 46, 46, 0.85);
  font-size: 26rpx;
}
#sub21{
  margin-right: 100rpx;
  border-radius: 12rpx;
  background-color: #cec9c9;
}
.flex>.sub3 {
  -webkit-box-flex: 1;
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 1;
  overflow: hidden;
  font-weight: bolder;
  color: rgba(65, 46, 46, 0.85);
  font-size: 26rpx;
  font-weight: bold;
}

.details_box {
  margin-top: 10px;
  margin-bottom: 10rpx;
  margin-left: 20rpx;
  padding: 0 15px;
  font-size: 13px;
  background: #fff;
}
.house{
  margin-bottom: 10rpx;
  font-size: 32rpx;
}
.details-s{
  border-radius: 10rpx;
  margin-right: 80rpx;
  color: white;
  background-color: #1ecb5c;
}
.name{
  box-shadow:0rpx 2rpx 5rpx 5rpx #c8c3c3;
  width: 80rpx;
  height: 80rpx;
  border-radius: 50%;
  margin-left: 20rpx;
  margin-top: 20rpx;
  background-color: rgba(170, 231, 163, 0.96);
}
.names1{
  margin-top: 25rpx;
  margin-left: 30rpx;
}
.names2{
  margin-left: 15rpx;
}
.text2{
  margin-top: 20rpx;
  text-align: center;
  font-size: 32rpx;
}

.goodsaction{
  display: flex;
  background-color: white;
  height: 120rpx;
  bottom: 0rpx;
  width: 100%;
  position: fixed;
}


.goodsaction text{
  width: 200rpx;
  font-size: 24rpx;
  margin-left: 23rpx;
  margin-top: 35rpx;
}
.action_btn{
  display: flex;
  flex-direction: row;
  justify-content: center;
  width: 400rpx;
  height: 80%;
  margin-left: 75rpx;
  margin-right: 20rpx;
  margin-top: 10rpx;
  margin-bottom: 10rpx;
}
.btn_left{
  background-color:#ff9900;
  width: 50%;
  height: 100%;
  font-size: 30rpx;
  color: rgba(255, 255, 255, 0.856);
  border-bottom-left-radius: 50rpx;
  border-top-left-radius: 50rpx;
}
.btn_right{
  background-color:#ff3300;
  width: 50%;
  height: 100%;
  font-size: 30rpx;
  color: rgba(255, 255, 255, 0.856);
  border-bottom-right-radius: 50rpx;
  border-top-right-radius: 50rpx;
}

.details_box1 {
  border-bottom: 120rpx solid #f4f5f6;
  margin-top: 10px;
  margin-bottom: 10rpx;
  padding: 0 15px;
  font-size: 13px;
  background: #fff;
  height: 500rpx;

}
.house1{
  margin-bottom: 10rpx;
  font-size: 32rpx;
  margin-left: 25rpx;
}


.containers {
  width: 100vw;
  font-size:12px;
  min-height: 200rpx;
  display: inline-block;
  color: #1d1d1d;
  position: relative;
  background:#F1F1F1;
}
// 游客评价
   .evaluate .evaluateCenter .evaluateItem{
     display: inline-block;
   }
.rightText{
  color: #4399FC;
  text-align: right;
}
.evaluate{
.tip{
  padding: 15px;
.left{
  font-size: 14px;
  font-weight: 500;
  color: #0c1317;
}
.right{
  color: #0f9efa;font-weight: bold;
}
}
.evaluateCenter{
  overflow-x: auto;
.evaluateItem{
  background-color: #FFFFFF;
  padding: 15px;
  border-radius: 10px;
  margin:  10px 15px 0 15px;
.evaluateTip{
.right{
  width: 100%;
  padding-left: 15px;
.righttip{
  font-size: 13px;
  font-family: PingFang SC;
  font-weight: bold;
  color: #0C1317;
  padding-bottom: 5px;
}
.bottom{
.star{
  display: flex;
  color: #fd9130;
text{
  padding-right: 4px;
  font-size: 11px;
  color: #0f9efa;
  font-weight: bold;
}
}
.time{
  color: #969899;
}
}
}
}
.evaluateText{
  margin: 10px 0 0 0;
  letter-spacing: 0.5px;
  line-height: 20px;
}
.lineclamp3{
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
  white-space: normal;
}
.evaluateListImg{
  width: 100%;
.evaluateListImgItem{
  width: 66px;
  height: 66px;
  float: left;
  margin-right: 6px;
image{
  border-radius: 5px;
}
}
}
.bottomImg{
  display: flex;
  width: 100%;
  padding-top: 15px;
image{
  width:18px ;
  height: 18px;
  border-radius: 50%;
}
text{
  padding-left: 6px;
  font-size: 14px;
  color: #787B7C;
  font-weight: bold;
}
}
}
}
}


</style>