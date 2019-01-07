<template>
  <div class="login">
    <!-- <top :system="system"></top> -->
    <section class="name">
      <div class="container">
      <h1>0910聊天室登入</h1>
          <form action=" " id="login">
            <div class="form-group">
               <label for="username">用户名 :</label>
                <input type="text" v-model="username" name="username" id="username">
            </div>
            <div class="form-group">
               <label for="pwd"> 密码 :</label> &nbsp;&nbsp;
                <input type="password" v-model="password" name="password" id="pwd">
            </div>
            <input type="hidden" name="send" value="1">
            <button type="button" @click="getLogin">登入</button>
            <div>{{error}}</div>
          </form>
          </div>
    </section>
    <!-- <foot :system="system"></foot> -->
  </div>
</template>

<script>
import top from './Top.vue'
import foot from './Foot.vue'
export default {
  name: 'login',
  props: {
    system: Object
  },
  data(){
     return {
       msg:"欢迎您来到Vue.js的世界",
       username:"",
       password:"",
       error:""
     }
  },
  components: {
    top,
    foot
  },
  methods:{
    getLogin(){
      this.axios({
         method:'post',
         url:'http://abc662353.gz01.bdysite.com/api/loginSave.php',
         data:this.qs.stringify({
          send:1,
          username:this.username,
          password:this.password
         })
      }).then(res=>{
        if (res.data.valid==true) {
          this.$router.push({path:'/'})
        }else{
          this.error=res.data.message
        }
      }).catch(error=>{
        console.log(error)
      })
    }
  },
  created(){
    
  }
}
</script>

<style scoped>
.container{
  width: 50%;
  margin: 50px auto 0;
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
</style>
