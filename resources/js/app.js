/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');
import VueRouter from 'vue-router';
Vue.use(VueRouter);

/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

Vue.component('navbar', require('./components/Navbar.vue').default);
Vue.component('products', require('./components/Products.vue').default);
Vue.component('footerbottom', require('./components/Footer.vue').default);
Vue.component('allproducts', require('./components/Allproducts.vue').default);
Vue.component('addproductfrom', require('./components/AddProductForm.vue').default);

const routes = [
    { path: '/', component: require('./components/Allproducts.vue').default },
    { path: '/add-product', component: require('./components/AddProduct.vue').default },
    { path: '/edit-product/:id', component: require('./components/EditProduct.vue').default, props: true, name:'edit-path'}
]

const router = new VueRouter({
    routes
})

/**
 * Next, we will create a fresh Vue application instance and attach i
 Vue.component('navbar', require('./components/Navbar').default);t to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

const app = new Vue({
    router,
    // el: '#app',
}).$mount('#app');
