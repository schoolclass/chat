<template>
	<div class="top">
		<div class="wrap">
			<div class="logo">
				<img :src="system.logo" :alt="system.title" :title="system.title"><h4>{{system.title}}</h4>
			</div>
		
		<div class="nav">
			<ul>
				<li class="color">
					<router-link to="/" exact>首页</router-link>
				</li>
				<li>
					<router-link to="/newPost">发布聊天室</router-link>
				</li>
				<li>
					<router-link to="/Login">会员登陆</router-link>
				</li>
				<li>
					<router-link to="/Register">用户注册</router-link>
				</li>
				<li>
					<router-link to="/NewUserAdd">管理员注册</router-link>
				</li>
			</ul>
		</div>
		</div>
	</div>
</template>

<script>
export default{
	name:'top',
	data(){
		return{

		}
	},
	props:{
		system:Object
	}
}
</script>


<style scoped>
.top{
	background: #333;
	width: 100%;
	height: 50px;
	color: #eee;
	padding: 0 10%;
	box-sizing: border-box;
}
.wrap{
	display: flex;
	justify-content: space-between;
}
.logo{
	width: 25%;
	position: relative;
}
.top img{
	position: absolute;
	left: 0px;
	top: 5px;
	width: 15%;
}
.top h4{
	position: absolute;
	left: 60px;
	top: 0;
	line-height: 50px;
	font-size: 18px;
}
.nav{
	width: 75%;
}
.nav ul{
	list-style: none;
	display: flex;
	justify-content: flex-end;
}
.nav ul li{
	line-height: 50px;
	font-size: 15px;
	margin-left: 15px;
}
.nav li a{
	text-decoration: none;
	color: #fff;
	display: inline-block;
	padding: 0 15px;
	text-align: center;
}
.nav ul li a.router-link-exact-active{
        background:#efefef;
        color:#333
    }
</style>