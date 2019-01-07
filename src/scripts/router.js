import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../components/Index.vue'
import NewView from '../components/NewView.vue'
import HelloWorld from '../components/HelloWorld.vue'
import Login from '../components/Login.vue'
import Register from '../components/Register.vue'
import NewPost from '../components/NewPost.vue'
import NewUserAdd from '../components/NewUserAdd.vue'
Vue.use(VueRouter)
const routes = [
		{path:'/',component:Index},
		{path:'/HelloWorld',component:HelloWorld},
		{path:'/NewView/:id',component:NewView},
		{path:'/Login',component:Login},
		{path:'/Register',component:Register},
		{path:'/NewPost',component:NewPost},
		{path:'/NewUserAdd',component:NewUserAdd}
]
const router = new VueRouter({
	routes,
	mode:"history"
})

export default router