import Vue from 'vue'
import App from './App.vue'
import router from './scripts/router.js'
import axios from 'axios'
import VueAxios from 'vue-axios'
import VueCookies from 'vue-cookies'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import qs from 'qs'
Vue.config.productionTip = false
Vue.use(VueAxios,axios)
Vue.use(ElementUI)
Vue.use(VueCookies)
Vue.prototype.qs=qs
Vue.axios.defaults.baseURL = 'http://abc662353.gz01.bdysite.com/api/'
let objectTostring = function(data){
	let arr = [];
	for(const key in data) {
		if(data.hasOwnProperty(key)){
			const element = data[key];
			arr.push(key+'='+element)
		}
	}
	return arr.join('&')
}


Vue.prototype.$parseString = objectTostring
new Vue({
	router,
  render: h => h(App),
}).$mount('#app')
