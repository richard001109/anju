<template>
<!--  轮播图-->
  <view class="pages">
    <view class="Swiper">
      <uni-swiper-dot :info="info" :current="current" field="content" :mode="mode" :dotsStyles="dotsStyles">
        <swiper class="swiper-box" @change="change" autoplay="true" interval="3000">
          <swiper-item v-for="(item ,index) in info" :key="index">
            <view class="swiper-item">
              <image  :src="item.files_id"/>
            </view>
          </swiper-item>
        </swiper>
      </uni-swiper-dot>
    </view>
      <view class="suggest">
        <uni-title title="推荐房源" type="h3" class="title" color="#f0ad4e">
        </uni-title>
      </view>

        <view class="intro">
          <view class="img_left" v-for="(item,index) in house" :key="index">
            <view class="img_item" @click="detail">
            <img :src="item.files_id"  class="img">
            </view>
            <view class="line" ></view>
            <!--          <strong style="float:right ;margin-right: 10rpx" >{{item.content.state}}</strong>-->
            <!--          <p style="float:right ;margin-right: 50rpx ;color: #dd524d" >{{item.content.name}}</p>-->
            <!--          <view style="float: right;margin-right: 5px">{{item.content.intro.form}}</view>-->
          <view class="content_right" >  <!--文字内容-->
          <uni-title class="state"  :title="item.lease+'    '+item.rooms+'室'" type="h5" color="blue" > </uni-title>
            <uni-title class="name" :title="item.areas+' '+item.jiedao+' '+item.xiaoqu" type="h5"></uni-title>
          <uni-title class="see_checkin" :title="item.see+'  '+item.check_in" type="h4">
          </uni-title>
          <uni-title class="price_area" :title="'￥'+item.price+'/月 '+item.area+'㎡'" type="h4" color="#FA5AFFF4"></uni-title>

          </view>
        </view>
      </view>
  </view>
</template>

<script>
import {uniSwiperDot} from '@dcloudio/uni-ui/lib/uni-swiper-dot/uni-swiper-dot'
import {uniTitle} from '@dcloudio/uni-ui/lib/uni-title/uni-title'
import {uniFav} from '@dcloudio/uni-ui/lib/uni-fav/uni-fav'

	export default {
		data() {
			return {
				title: 'Hello AnJv',
        info:[],
        house:[],
        check:[],
        current: 0,
        mode: 'round',
        dotsStyles:{
          backgroundColor: 'rgba(255, 90, 95,0.3)',
          border: '1px rgba(255, 90, 95,0.3) solid',
          color: '#fff',
          selectedBackgroundColor: 'rgba(255, 90, 95,0.9)',
          selectedBorder: '1px rgba(255, 90, 95,0.9) solid'
        }
			}
		},
		onLoad() {
      let temp=new Array(500).fill(false);
      this.check=temp;
      // console.log(this.check);
      uni.request({
          url:"http://localhost:8888/house/findAll",
          method:"GET",
          success:result => {
            // console.log(result);
            this.house=result.data.data;
            for(let i=0;i<3;i++)
              this.info.push(this.house[i]);
             // console.log(this.house);
          }
        })
		},
		methods: {
      change(e) {
        this.current = e.detail.current;
      },
      detail(){
        console.log('这是详情页面');
      },
      favClick(index){
        console.log('原来的'+this.check[index]);
        this.check[index]=!this.check[index];
        console.log('现在的'+this.check[index]);
        if(this.check[index]===true){
          wx.showToast(
              {
                title:'收藏成功！',
                icon: 'success',
                duration: 2000
              }
          )
        }
      }
		},
    components:{
      uniSwiperDot,
      uniTitle,
      uniFav
    }

	}
</script>

<style lang="scss">
$sysWidth: 100rpx;
.pages{
  .Swiper{
    .swiper-box{
      height: 500rpx;
    }
  }
  .intro{
    .img_left{
      position: relative;
      .line{
        border-bottom: 1rpx solid grey ;
        margin-top: 60rpx
      }
      .img_item{
        .img{
          width: 40%;
          height: 300rpx+$sysWidth;
          margin-top: 35rpx;
          border-bottom: 1rpx solid gray;
          border-top: 1rpx solid gray;
        }
      }
      .content_right{
          position: absolute;
          top:10rpx;
          right: 0rpx;
          margin-top: 100rpx;
        .state{
          color: white;
          background-color: #007aff;
        }

      }
    }
  }
}
.uni-fav {
  margin-left: 20rpx;
}
.favBtn {
  margin: 0 20rpx 20rpx 0;
  float: right;
}

//.swiper-box{
//  height: 500rpx;
//            }
//.line{
//  border-bottom: 1px solid gray
//}
//	.content {
//		display: flex;
//		flex-direction: column;
//		align-items: center;
//		justify-content: center;
//	}
//
//	.logo {
//		height: 200rpx;
//		width: 200rpx;
//		margin: 200rpx auto 50rpx auto;
//	}
//
//	.text-area {
//		display: flex;
//		justify-content: center;
//	}
//
//	.title {
//		font-size: 36rpx;
//		color: #8f8f94;
//	}

</style>
