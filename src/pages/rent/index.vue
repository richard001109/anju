<template>
    <view class="pages">
      <view class="uniDataPicker">
        <view class="uniDataPicker_top">
          <uni-title title="请选择搜索类型" type="h1" align="center" color="#00BFFF80"></uni-title>
        </view>
        <uni-data-picker :localdata="items" popup-title="请选择搜索类型" @change="onchange" @nodeclick="onnodeclick"></uni-data-picker>
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
 import {uniTitle} from '@dcloudio/uni-ui/lib/uni-title/uni-title'
import {uniDataPicker} from '@dcloudio/uni-ui/lib/uni-data-picker/uni-data-picker'
 import {uniFav} from '@dcloudio/uni-ui/lib/uni-fav/uni-fav'
    export default {
        data(){
          return{
            house:[],
            check:[],
            info: [{
              url: 'https://pic1.ajkimg.com/display/xinfang/40fd23bd080e84e09409addcfc9bfb8e/190x130n.jpg',
              content: {
                name:'盛世珑门',
                state:'在售',
                intro:
                    {
                      form:'住宅',
                      property:'贴心物业',
                      rail:'多轨交汇',
                      price:2500+'/月',
                      area:'建面'+'112'+'平方米'
                    }
              }
            },
              {
                url: 'https://pic1.ajkimg.com/display/xinfang/583eb3adaecff80cce81b41c760a6575/190x130n.jpg',
                content: {
                  name:'盛世珑门',
                  state:'在售',
                  intro:
                      {
                        form:'住宅',
                        property:'贴心物业',
                        rail:'多轨交汇',
                        price:2500+'/月',
                        area:'建面'+'112'+'平方米'
                      }
                }
              },
              {
                url: 'https://pic1.ajkimg.com/display/xinfang/3dacf7978cdf785fa3d0e588db75fbbb/190x130n.jpg',
                content: {
                  name:'盛世珑门',
                  state:'在售',
                  intro:
                      {
                        form:'住宅',
                        property:'贴心物业',
                        rail:'多轨交汇',
                        price:2500+'/月',
                        area:'建面'+'112'+'平方米'
                      }
                }
              }
            ],
            items: [{
              text: "区域",
              value: "1-0",
              children: [
                {
                  text: "渝中",
                  value: "1-1"
                },
                {
                  text: "沙坪坝",
                  value: "1-2"
                },
                {
                  text: "江北",
                  value: "1-3"
                },
                {
                  text: "南岸",
                  value: "1-4"
                },
                {
                  text: "大渡口",
                  value: "1-5"
                },
                {
                  text: "九龙坡",
                  value: "1-6"
                },
                {
                  text: "渝北",
                  value: "1-7"
                },
                {
                  text: "巴南",
                  value: "1-8"
                },
                {
                  text: "北碚",
                  value: "1-9"
                },
                {
                  text: "万州",
                  value: "1-10"
                },
                {
                  text: "涪陵",
                  value: "1-11"
                },
                {
                  text: "长寿",
                  value: "1-12"
                },
                {
                  text: "合川",
                  value: "1-13"
                },
                {
                  text: "南川",
                  value: "1-14"
                },
                {
                  text: "永川",
                  value: "1-15"
                },
                {
                  text: "江津",
                  value: "1-16"
                },
                {
                  text: "大足",
                  value: "1-17"
                },
                {
                  text: "綦江",
                  value: "1-18"
                },
                {
                  text: "黔江",
                  value: "1-19"
                },
                {
                  text: "璧山",
                  value: "1-20"
                },
                {
                  text: "潼南",
                  value: "1-21"
                },
                {
                  text: "荣昌",
                  value: "1-22"
                },
                {
                  text: "铜梁",
                  value: "1-23"
                },
                {
                  text: "垫江",
                  value: "1-24"
                },
                {
                  text: "梁平",
                  value: "1-25"
                },
                {
                  text: "奉节",
                  value: "1-26"
                },
                {
                  text: "巫山",
                  value: "1-27"
                },
                {
                  text: "巫溪",
                  value: "1-28"
                },
                {
                  text: "开",
                  value: "1-29"
                },
                {
                  text: "石柱",
                  value: "1-30"
                },
                {
                  text: "武隆",
                  value: "1-31"
                },
                {
                  text: "彭水",
                  value: "1-32"
                },
                {
                  text: "酉阳",
                  value: "1-33"
                },
                {
                  text: "秀山",
                  value: "1-34"
                },
                {
                  text: "忠县",
                  value: "1-35"
                },
                {
                  text: "丰都",
                  value: "1-36"
                },
                {
                  text: "云阳",
                  value: "1-37"
                },
                {
                  text: "城口",
                  value: "1-38"
                }
              ]
            },
              {
                text: "类型",
                value: "2-0",
                children: [
                  {
                    text: "一室",
                    value: "2-1"
                  },
                  {
                    text: "两室",
                    value: "2-2"
                  },
                  {
                    text: "三室",
                    value: "2-3"
                  },
                  {
                    text: "四室",
                    value: "2-4"
                  },
                ]
              },
              {
                text: "价格",
                value: "3-0",
                children: [
                  {
                    text: "1000-3000",
                    value: "3-1"
                  },
                  {
                    text: "3000-5000",
                    value: "3-2"
                  },
                  {
                    text: "5000-10000",
                    value: "3-3"
                  },
                ]
              }]
          }
        },
      methods: {
        onchange(e) {
          this.house=[];
          const value = e.detail.value
           console.log(value);
          if(value[0].text==='区域'){
            uni.request({
              url:'http://localhost:8888/house/findByareas/'+value[1].text,
              method:"POST",
              success:(r)=>{
                console.log(r);
                this.house=r.data.data;
                let temp=new Array(r.data.data.length).fill(false);
                this.check=temp;
              }
            })
          }
          else if(value[0].text==='类型'){
            if(value[1].text==='一室')
            uni.request({
              url:'http://localhost:8888/house/findByrooms/'+1,
              method:"POST",
              success:(r)=>{
                console.log(r);
                this.house=r.data.data;
                let temp=new Array(r.data.data.length).fill(false);
                this.check=temp;
              }
            })
            else if(value[1].text==='两室'){
              uni.request({
                url:'http://localhost:8888/house/findByrooms/'+2,
                method:"POST",
                success:(r)=>{
                  console.log(r);
                  this.house=r.data.data;
                  let temp=new Array(r.data.data.length).fill(false);
                  this.check=temp;
                }
              })
            }
            else if(value[1].text==='三室'){
              uni.request({
                url:'http://localhost:8888/house/findByrooms/'+3,
                method:"POST",
                success:(r)=>{
                  console.log(r);
                  this.house=r.data.data;
                  let temp=new Array(r.data.data.length).fill(false);
                  this.check=temp;
                }
              })
            }
            else
              uni.request({
                url:'http://localhost:8888/house/findByrooms/'+4,
                method:"POST",
                success:(r)=>{
                  console.log(r);
                  this.house=r.data.data;
                  let temp=new Array(r.data.data.length).fill(false);
                  this.check=temp;
                }
              })
          }
          else{
               if(value[1].text==='1000-3000'){
                   uni.request({
                     url:'http://localhost:8888/house/findByprice/'+1000+'/'+3000,
                     method:"POST",
                     success:(r)=>{
                       console.log(r);
                       this.house=r.data.data;
                       let temp=new Array(r.data.data.length).fill(false);
                       this.check=temp;
                     }
                   })
               }
               else if(value[1].text==='3000-5000'){
                 uni.request({
                   url:'http://localhost:8888/house/findByprice/'+3000+'/'+5000,
                   method:"POST",
                   success:(r)=>{
                     console.log(r);
                     this.house=r.data.data;
                     let temp=new Array(r.data.data.length).fill(false);
                     this.check=temp;
                   }
                 })
               }
               else {
              uni.request({
                url:'http://localhost:8888/house/findByprice/'+5000+'/'+10000,
                method:"POST",
                success:(r)=>{
                  console.log(r);
                  this.house=r.data.data;
                  let temp=new Array(r.data.data.length).fill(false);
                  this.check=temp;
                  // console.log(this.check);
                }
              })
            }
          }
        },
        onnodeclick(node) {
          //console.log(node);
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
         uniTitle,
         uniDataPicker,
          uniFav
         },
        name: "index"
    }
</script>

<style lang="scss" scoped>
$sysWidth: 100rpx;
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
.uni-fav {
  margin-left: 20rpx;
}
.favBtn {
  margin: 0 20rpx 20rpx 0;
  float: right;
}
</style>
