<template>
  <div id="app">
    <router-view :system = "system"></router-view>
  </div>
</template>

<script>
export default {
  name: 'app',
  data(){
  	return{
  		system: {
        logo: require('./assets/logo.png'),
        title: "欢迎您来到Vue.js的世界",
        copyright: "版权所有@0918"
      }
  	}
  },
  components: {
  }
}
</script>

<style>
*{
  padding: 0;
  margin: 0;
}
body {
  font-family: "微软雅黑,宋体";
  font-size: 13px;
  color: #666;
}
ul{
	list-style: none;
}
.wrap {
  width: 1200px;
  height: auto;
  margin: 0 auto;
}
.card {
  border: 1px solid #ddd;
  display: flex;
  justify-content: flex-start;
  flex-flow: column;
  margin-bottom: 25px;
  border-radius: 4px;
  box-shadow: 2px 2px 7px #eee;
}
.card-header .card-header-title {
  font-size: 18px;
  position: relative;
  padding: 0 14px;
  font-weight: normal;
  border-bottom: 1px solid #ddd;
}
.card-header .card-header-title a {
  color: rgb(92, 163, 22);
}

.card-header .card-header-title small {
  position: absolute;
  width: 50px;
  height: 50px;
  background: rgb(92, 163, 22);
  color: white;
  left: -60px;
  top: 0px;
  display: flex;
  justify-content: center;
  flex-flow: column;
  font-size: 12px;
  font-weight: normal;
  text-align: center;
  border-radius: 3px;
  box-shadow: 0 0 5px #eee;
}
.card-header .card-header-title small span {
  align-items: flex-start;
  height: 15px;
  line-height: 15px;
}
.card-body {
  padding: 15px;
  text-indent: 2em;
}
.card-footer {
  border-top: 1px solid #ddd;
  padding: 15px;
}
</style>
