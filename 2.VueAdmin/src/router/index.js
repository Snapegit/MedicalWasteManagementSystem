	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import zhuanyunyuan from '@/views/zhuanyunyuan/list'
	import feiwujiaojie from '@/views/feiwujiaojie/list'
	import dengjiyuan from '@/views/dengjiyuan/list'
	import feiwudengji from '@/views/feiwudengji/list'
	import chuzhiyuan from '@/views/chuzhiyuan/list'
	import feiwuxiaohui from '@/views/feiwuxiaohui/list'
	import users from '@/views/users/list'
	import feiwucunchu from '@/views/feiwucunchu/list'
	import dengjiyuanRegister from '@/views/dengjiyuan/register'
	import dengjiyuanCenter from '@/views/dengjiyuan/center'
	import zhuanyunyuanRegister from '@/views/zhuanyunyuan/register'
	import zhuanyunyuanCenter from '@/views/zhuanyunyuan/center'
	import chuzhiyuanRegister from '@/views/chuzhiyuan/register'
	import chuzhiyuanCenter from '@/views/chuzhiyuan/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/dengjiyuanCenter',
			name: '登记员个人中心',
			component: dengjiyuanCenter
		}
		,{
			path: '/zhuanyunyuanCenter',
			name: '转运员个人中心',
			component: zhuanyunyuanCenter
		}
		,{
			path: '/chuzhiyuanCenter',
			name: '处置员个人中心',
			component: chuzhiyuanCenter
		}
		,{
			path: '/zhuanyunyuan',
			name: '转运员',
			component: zhuanyunyuan
		}
		,{
			path: '/feiwujiaojie',
			name: '废物交接',
			component: feiwujiaojie
		}
		,{
			path: '/dengjiyuan',
			name: '登记员',
			component: dengjiyuan
		}
		,{
			path: '/feiwudengji',
			name: '废物登记',
			component: feiwudengji
		}
		,{
			path: '/chuzhiyuan',
			name: '处置员',
			component: chuzhiyuan
		}
		,{
			path: '/feiwuxiaohui',
			name: '废物销毁',
			component: feiwuxiaohui
		}
		,{
			path: '/users',
			name: '管理员',
			component: users
		}
		,{
			path: '/feiwucunchu',
			name: '废物存储',
			component: feiwucunchu
		}
		]
	},
	{
		path: '/dengjiyuanRegister',
		name: '登记员注册',
		component: dengjiyuanRegister
	},
	{
		path: '/zhuanyunyuanRegister',
		name: '转运员注册',
		component: zhuanyunyuanRegister
	},
	{
		path: '/chuzhiyuanRegister',
		name: '处置员注册',
		component: chuzhiyuanRegister
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
