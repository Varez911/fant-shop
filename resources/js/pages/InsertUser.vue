<template>
  <div class="app" id="app">
    <div class="component-wrapper">
        <div class="formInput">
            <h2>Insert Data User </h2>
            <form id="signup-form">
        <div class="row">
            <div class="col-12 form-group">
                <label class="col-form-label col-form-label-lg">Nama <span class="text-danger">*</span></label>
                <input type="text" class="form-control form-control-lg" v-model="nama">
            </div>
            <div class="col-12 form-group">
                <label class="col-form-label col-form-label-lg">Email <span class="text-danger">*</span></label>
                <input type="email" class="form-control form-control-lg" v-model="email">
            </div>
            <div class="col-12 form-group">
                <label class="col-form-label col-form-label-lg">Password<span class="text-danger">*</span></label>
                <input type="password" class="form-control form-control-lg" v-model="password">
            </div>
            <div class="col-12 form-group">
                <label class="col-form-label col-form-label-lg">Status <span class="text-danger">*</span></label>
                <select class="form-control form-control-lg" v-model="status">
                    <option value="">Select status</option>
                    <option value="admin">Admin</option>
                    <option value="user">User</option>
                </select>
            </div>
            <div class="col-12 form-group text-center">
                <router-link to="/dashboard">
                <button class="btn btn-vue btn-lg col-4" @click="insertUser()">Add</button>
                </router-link>
            </div>
        </div>
    </form>
        </div>
    </div>
  </div>
</template>

<script>
import FormEdit from '../components/FormEdit.vue'
export default {
  components:{
      FormEdit
  },
  props:['idBarang'],
  data: function(){
        return{
            id: '',
            nama: '',
            email: '',
            password: '',
            status: ''
        }
  },  
  methods:{
    insertUser: function(){
            axios.get('/api/insertUser-'+this.nama+'-'+this.email+'-'+this.password+'-'+this.status)
            .then(
                console.log('Update Berhasil')
            );
            // console.log('/api/updateUser-'+this.id+'-'+this.nama+'-'+this.email+'-'+this.password+'-'+this.status);
        }
  },
  
  
}
</script>

<style lang="scss" scoped>
@import "../../sass/designLoginPage.scss";

div .formInput{
  margin: 5% 35%;
}

#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
  padding: 5%;
  text-align: center;
  background-image: url('../assets/bg.png');
  background-repeat: no-repeat;
  box-sizing: border-box;
  height: 100vh;
  width: 100vw;
  background-size:cover;
 // background-position: -663px -6px;
  // background-size: 100% 100%;
  filter: grayscale(30%);
  .component-wrapper {
    box-shadow: 5px 5px 5px 5px rgba(0,0,0,0.2);
    height: 100%;
    background: white;
    overflow: hidden;
  }
}
</style>