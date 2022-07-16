<template>
  <view>
    <uni-forms ref="form" :modelValue="formData" :rules="rules" label-position="top">
      <uni-forms-item label="用户名" name="name">
        <uni-easyinput type="text" v-model="formData.user_name" placeholder="请输入用户名" />
      </uni-forms-item>
      <uni-forms-item label="密码" name="password">
<!--        <input class="input" v-model="formData.email" type="text" placeholder="请输入用户名" @input="binddata('email',$event.detail.value)" />-->
        <uni-easyinput type="password" v-model="formData.user_password" placeholder="请输入密码" />
        <uni-easyinput type="password" v-model="formData.confirm_password" placeholder="请确认密码" />
      </uni-forms-item>
    </uni-forms>
    <button @click="register">确认</button>
  </view>
</template>

<script>
import {uniEasyinput} from '@dcloudio/uni-ui'
import {uniForms} from '@dcloudio/uni-ui'
import {uniFormsItem} from '@dcloudio/uni-ui'
export default {
  data() {
    return {
      // 表单数据
      formData: {
        user_name: '',
        user_password: '',
        confirm_password:''
      },
      rules: {
        // 对name字段进行必填验证
        user_name: {
          rules: [{
            required: true,
            errorMessage: '请输入用户名',
          },
            {
              minLength: 3,
              maxLength: 10,
              errorMessage: '姓名长度在 {minLength} 到 {maxLength} 个字符',
            }
          ]
        },

        user_password: {
          rules: [{
            required: true,
            errorMessage: '请重新输入密码',
          }]
        }
      }
    }
  },
  methods: {
    // 触发提交表单
    register() {
      console.log(this.formData.user_name);
      console.log(this.formData.confirm_password);
      uni.request({
        url: "http://localhost:8888/userInfo", //仅为示例，并非真实接口地址。
        method: 'POST',
        data:  {
          user_name:this.formData.user_name,
          user_password:this.formData.confirm_password,
        },
        success: (res) => {
          // console.log(res);
          if(res.data.code==='0') //表示成功
          {
            wx.showToast({
              title:'注册'+res.data.msg,
              icon: 'success',
              duration: 1000
            })
            uni.navigateTo({
              url:'../login/index',
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

    }
  },
  components:{
    uniEasyinput,
    uniForms,
    uniFormsItem
  },
  name: "index"
}
</script>

<style scoped>

</style>
