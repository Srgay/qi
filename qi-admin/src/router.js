import Vue from 'vue'
import Router from 'vue-router'

// import Login from './components/Login.vue'
const Login = () => import(/* webpackChunkName: "login_home_welcome" */ './components/Login.vue')
// import Home from './components/Home.vue'
const Home = () => import(/* webpackChunkName: "login_home_welcome" */ './components/Home.vue')
// import Welcome from './components/Welcome.vue'
const Welcome = () => import(/* webpackChunkName: "login_home_welcome" */ './components/Welcome.vue')

// import Users from './components/user/Users.vue'
const Users = () => import(/* webpackChunkName: "Users_Rights_Roles" */ './components/user/Users.vue')
const Article = () => import(/* webpackChunkName: "Order_Report" */ './components/article/Article.vue')

Vue.use(Router)

const router = new Router({
  routes: [
    { path: '/', redirect: '/login' },
    { path: '/login', component: Login },
    {
      path: '/home',
      component: Home,
      redirect: '/welcome',
      children: [
        { path: '/welcome', component: Welcome },
        { path: '/users', component: Users },
        { path: '/article', component: Article },
      ]
    }
  ]
})

// 挂载路由导航守卫
router.beforeEach((to, from, next) => {
  // to 将要访问的路径
  // from 代表从哪个路径跳转而来
  // next 是一个函数，表示放行
  //     next()  放行    next('/login')  强制跳转

  if (to.path === '/login') return next()
  // 获取token
  const tokenStr = window.sessionStorage.getItem('token')
  if (!tokenStr) return next('/login')
  next()
})

export default router
