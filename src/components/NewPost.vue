<template>
  <div class="newpost">
    <top :system="system"></top>
    <section> 
      <form>
        <h1>{{ msg }}</h1>
        <div class="form-group">
          <label>聊天室名字 : </label>
          <input type="text" name="" v-model="title">
        </div>
        <div class="form-group ites">
          <label>聊天主题 : </label>&nbsp;
          <textarea v-model="body"></textarea>
        </div>
        <button type="button" @click="getchat">创建聊天室</button>
      </form>
    </section>
    <foot :system="system"></foot>
  </div>
</template>

<script>
import top from './Top.vue'
import foot from './Foot.vue'
export default {
  name: 'newpost',
  props: {
    system: Object
  },
  data(){
     return {
       msg:"快来新建一个聊天室吧!",
       title:"",
       body:""
     }
  },
  methods:{
    getchat(){
      let formData = "send=创建聊天室&title="+this.title+"&body="+this.body;
      this.axios.get('http://abc662353.gz01.bdysite.com/api/chatAddSave.php?'+formData)
      .then(res=>{

        console.log(res)
      })
      .catch(error=>{
        console.log(error)
      })
    }
  },
  components: {
    top,
    foot
  },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  form{
    width: 35%;
    margin: 50px auto 0;
    text-align: center;
  }
  input{
    width: 70%;
    height: 25px;
    margin: 25px 0;
  }
  textarea{
    width: 70%;
    height: 80px;
  }
  .ites label{
    vertical-align:top;
  }
</style>
