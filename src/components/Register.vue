<template>
  <div class="register">
    <top :system="system"></top>
    <section>
      <div class="container">
        <h1>{{ msg }}</h1>
        <form class="form-block" id="register" @submit.prevent="registerSave">
            <div class="avatar">
                <input type="file" @change="a" class="upload_file" ref="upload_file" >
                <img :src="users.imageUrl"  alt="点击上传头像">
                <input type="hidden" v-model="users.imageUrl">
            </div>
            <div class="form-group">
               <label for="username">用户名 :</label>&nbsp;&nbsp;
                <input type="text" v-model="users.name">
            </div>
            <div class="form-group">
               <label for="pwd"> 初始密码 :</label>
                <input type="password" v-model="users.password">
            </div>
            <div class="form-group">
               <label for="pwd"> 确认密码 :</label> 
                <input type="password" v-model="users.checkpassword">
            </div>
            <input type="hidden" name="send" value="1">
            <button type="submit">注册</button>
            <div>{{users.error}}</div>
          </form>
      </div>
    </section>
    <foot :system="system"></foot>
  </div>
</template>

<script>
import top from './Top.vue'
import foot from './Foot.vue'
export default {
  name: 'register',
  props: {
    system: Object
  },
  data(){
     return {
       msg:"用户注册",
       users:{
        error:"",
        send:1,
        name:"",
        password:"",
        checkpassword:"",
        imageUrl:require('../assets/logo.png')
       },
       verify:{
            Boolean:false,
            message:[]
        }
      }
    },
  computed:{
    set_vefify(){
          return Array.from(new Set(this.verify.message))
    },
    verify_username(){
          let username = this.users.name;
          let reg =/^[\u4e00-\u9fa5]+$/;
          if(!reg.test(username)){
            this.verify.message.push('用户名必须是中文')
            this.verify.Boolean = false
          }else{
            this.verify.Boolean = true
          }
          return this.verify.Boolean
        },
        verify_passowrd(){
          if(this.users.password!="" && this.users.checkpassword!=""){
            let $password = this.users.password;
            let $checkpass = this.users.checkpassword;
            if ($password != $checkpassword) {
                this.verify.message.push("初始密码和确认密码不符合");
                this.verify.Boolean = false;
                return this.verify.message[1];
            }else{
               this.verify.Boolean = true;
               return false
            }
          }else{
              this.verify.message.push("密码不能为空");
              this.verify.Boolean = false;
              return this.verify.message[1];
          }
        },
        verify_imageUrl(){
         return false
      }
  },
  methods:{
    a(){
      let _this = this;
      let file = this.$refs.upload_file.files[0]
      let reader = new FileReader();
        reader.onload = function(){
          _this.users.imageUrl=reader.result
        }
        reader.readAsDataURL(file);
    },
    registerSave(){
      let formData={
        send:this.users.send,
        username:this.users.name,
        password:this.users.password,
        checkpassword:this.users.checkpassword,
        userAvatar:this.users.imageUrl
      }
      console.log(this.users.imageUrl)
      formData = this.$parseString(formData);
      this.axios.post('http://abc662353.gz01.bdysite.com/api/registerSave.php',formData).then(res=>{
        if (res.data.valid==true) {
          this.$router.push({path:'/Login'})
        }else{
          this.users.error=res.data.message
        }
        console.log(res)
      })
    }
  },
  components: {
    top,
    foot
  },
  created(){
    // let formData={
    //     send:this.users.send,
    //     username:this.users.name,
    //     password:this.users.password,
    //     checkpassword:this.users.checkpassword,
    //     usersAvatar:this.users.imageUrl
    //   }
    //    console.log(JSON.stringify(formData))
    //     console.log(this.$parseString(formData))
  }
}
</script>
<style scoped>
.container{
  width: 50%;
  margin: 50px auto 100px;
  text-align: center;
}
h1{
  font-size: 30px;
}
input{
  width: 35%;
  height: 25px;
  margin: 20px 15px;
}
button{
  padding: 5px 10px;
}
img{
  width: 100px;
}
</style>
