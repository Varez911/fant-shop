require('./bootstrap');

window.Vue = require('vue');

import router from './router'

// import 'vue-awesome/icons/user-o'
// import 'vue-awesome/icons/user-circle-o'
import 'vue-awesome/icons/lock'
import 'vue-awesome/icons/map-marker'
import 'vue-awesome/icons/star'
import 'vue-awesome/icons/cog'
import 'vue-awesome/icons/spinner'
// import 'vue-awesome/icons/check-circle-o'
import 'vue-awesome/icons/book'
import Icon from 'vue-awesome/components/Icon'
import swal from 'sweetalert2';
window.swal = swal;
/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

const app = new Vue({
    el: '#app',
    data:{
        title: 'Fant Online Shop'
    },
    router,
    methods: {
    makeActive: function(item){
      this.active = item;
    }
  }
});

