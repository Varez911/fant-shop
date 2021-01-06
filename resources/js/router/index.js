import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

// Component for routes
import NotFound from '../pages/NotFound.vue'
const Home = require('../pages/Home.vue').default
import Product from '../pages/Products.vue'
import Cart from '../pages/Cart.vue'
import Dashboard from '../pages/Dashboard.vue'
import FakeDashboard from '../components/BannerFant.vue'
import FakeBaner from '../components/newBanner.vue'
import Admin from '../pages/LoginAdmin.vue'
import Product2 from '../pages/Product1.vue'
import Product3 from '../pages/Product3.vue'
import Product4 from '../pages/Product4.vue'
import Product5 from '../pages/Product5.vue'
import Success from '../pages/Success.vue'
import EditUser from '../pages/EditUser.vue'
import EditBarang from '../pages/EditBarang.vue'
import EditTransaksi from '../pages/EditTransaksi.vue'
import InsertUser from '../pages/InsertUser.vue'
import InsertBarang from '../pages/InsertBarang.vue'
// import SplashScreen from '../components/SplashScreen.vue'
// import Login from '../components/LoginScreen.vue'

const routes = [
    {
        path: '*',
        component: NotFound
    },
    {
        path: '/',
        component: Home
    },
    {
        path: '/product-1',
        component: Product
    },
    {
        path: '/product-2',
        component: Product2
    },    
    {
        path: '/product-3',
        component: Product3
    },
    {
        path: '/product-4',
        component: Product4
    },
    {
        path: '/product-5',
        component: Product5
    },
    {
        path: '/cart',
        component: Cart
    },
    {
        path: '/admin',
        component: Admin
    },
    {
        path: '/dashboard',
        component: Dashboard
    },
    {
        path: '/fakeDashboard',
        component: FakeDashboard
    },
    {
        path: '/success',
        component: Success
    },
    {
        path: '/newBanner',
        component: FakeBaner
    },
    {
        path: '/dashboard-editUser/:idUser',
        component: EditUser
    },
    {
        path: '/dashboard-editBarang/:id',
        component: EditBarang
    },
    {
        path: '/dashboard-editTransksi-:id?',
        component: EditTransaksi
    },
    {
        path: '/dashboard-insertUsers',
        component: InsertUser
    },
    {
        path: '/dashboard-insertProducts',
        component: InsertBarang
    }
]

const router = new VueRouter({
    mode: 'history',
    routes: routes
})

export default router