<template>
	<div class="index">
		<top :system="system"></top>
		<section class="news wrap">
			 <ul>
         <li v-for="(val,index) in news" :key="index">
           <router-link :to={path:/newView/+val.chatId} tag="div">
              <!-- {{index+1}}{{val}} -->
              <div class="lf"><span>{{val.createDate.split('-')[0]}} {{val.createDate.split('-')[1]}}-{{val.createDate.split('-')[2]}}</span></div>
              <div class="rt">
                <h3>{{val.title}}</h3>
                <div class="con"><span>{{val.body}}</span></div>
              </div>
           </router-link>
         </li>
       </ul>
		</section>
		<foot :system="system"></foot>
    
	</div>
</template>

<script>

import top from './Top.vue'
import foot from './Foot.vue'
export default {
  name: 'Index',
  data(){
  	return{
  		msg:"欢迎您来到Vue.js的世界",
  		system:{
  			logo:require('../assets/logo.png'),
  			title:"欢迎您来到Vue.js的世界",
  			copyright:"版权所有@0910"
  		},
      news:[]
  	}
  },
 methods:{
  	getNewsList(){
  		this.axios.get('http://abc662353.gz01.bdysite.com/api/getChatList.php').then((res)=>{
        this.news = res.data
      })
  	}
  },
  created(){
  	this.getNewsList()

  },
  components:{
  	top,
  	foot
  } 
}
</script>

<style scoped>
  .news li{
    list-style: none;
  }
  .news li>div{
    width: 64%;
    margin: 20px auto;
    display: flex;
    justify-content: space-between;
  }
  .news .rt{
    width: 91%;
    border:1px solid #ddd;
    border-radius: 5px;
  }
  .news .lf{
    width: 7%;
    text-align: center;
  }
  .news .lf span{
    display: inline-block;
    padding: 15%;
    background-color: rgb(55,170,10);
    color: white;
    font-size: 12px;
  }
  .news div h3{
    font-size: 18px;
    padding: 0.9% 1%;
    box-sizing: border-box;
    border-bottom: 1px solid #ddd;
    color: rgb(55,170,10);
  }
  .news .con{
    padding: 4% 1%;
  }
</style>