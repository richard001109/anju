<template>
  <view class="content">
    <view class="avatorWrapper">
      <view class="avator">
        <image class="img" src="/static/logo.png" mode="widthFix"></image>
      </view>
    </view>
    <view class="form">
      <view class="inputWrapper" >
        <input class="input" type="text" v-model="user_name" placeholder="请输入用户名"/>
      </view>
      <view class="inputWrapper" >
        <input class="input" type="password" v-model="user_password"  placeholder="请输入密码"/>

      </view>
      <view class="loginBtn" @click="login">
        <text class="btnValue">登录</text>
      </view>
      <view class="registerBtn" @click="enter_register">
        <text>注册用户</text>
      </view>
    </view>
  </view>
</template>

<script>
import {uniEasyinput} from '@dcloudio/uni-ui/lib/uni-easyinput/uni-easyinput'

export default {
  data(){
    return{
      user_name:"",
      user_password:"",
      value:"",
    }
  },
  methods:{
    login(){
      uni.request({
        url: "http://localhost:8888/userInfo/login", //仅为示例，并非真实接口地址。
        method: 'POST',
        data:  {
            user_name:this.user_name,
            user_password:this.user_password,
          },
        success: (res) => {
          console.log(res);
          if(res.data.code==='0') //表示成功
          {
            uni.setStorage({
              key:'User',
              data:res.data.data,
              success:function () {
                wx.showToast({
                  title:res.data.msg,
                  icon: 'success',
                  duration: 1000
                })
                uni.switchTab({
                  url:'../home/index',
                  success(res) {
                    console.log('成功啦',res);
                  },
                  fail(err) {
                    console.log('失败啦',err);
                  }
                });
              }
            })

          }
          else
          {
            wx.showToast({
              title:res.data.msg,
              icon: 'error',
              duration: 2000
            })
          }
        }
      });
    },
    enter_register(){
      uni.navigateTo({
        url:"../register/index",
          success(res) {
            console.log('成功啦',res);
          },
          fail(err) {
            console.log('失败啦',err);
          }
      })
    }
  },
  components:{
    uniEasyinput
  },

  name: "login"
}
</script>

<style scoped>
.content {
  background: #377EB4;
  width: 100vw;
  height: 100vh;
}
.avatorWrapper{
  height: 30vh;
  width: 100vw;
  display: flex;
  justify-content: center;
  align-items: flex-end;
}
.avator{
  width: 200upx;
  height: 200upx;
  overflow: hidden;
}
.avator .img{
  width: 100%
}
.form{
  padding: 0 100upx;
  margin-top: 80px;
}
.inputWrapper{
  width: 100%;
  height: 80upx;
  background: white;
  border-radius: 20px;
  box-sizing: border-box;
  padding: 0 20px;
  margin-top: 25px;
}
.inputWrapper .input{
  width: 100%;
  height: 100%;
  text-align: center;
  font-size: 15px;
}
.loginBtn{
  width: 100%;
  height: 80upx;
  background: #77B307;
  border-radius: 50upx;
  margin-top: 50px;
  display: flex;
  justify-content: center;
  align-items: center;

}
.loginBtn .btnValue{
  color: white;
}
.registerBtn{
  text-align: center;
  color: #EAF6F9;
  font-size: 15px;
  margin-top: 20px;
}
</style>
