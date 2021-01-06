<template>
  <div class="app" id="app">
    <div class="component-wrapper">
        <div class="formInput">
            <h2>Edit Data Transaksi</h2>
            <FormEdit :Data="Update"/>

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
  props:['id'],
  data: function () {
    return{
      Data: [],
      sort1:{
        field: 'first_name',
        order: 'asc'
      },
      // title: globalData.dataShared
    }
  },
  
  methods:{
    loadUsers: function(){
      axios.get('/api/getUsers')
      .then((response)=>{
        this.Users = response.data;
        // console.log(response);
      });
    },
    loadProduct: function(){
      axios.get('/api/getProduct')
      .then((response)=>{
        this.Products = response.data;
      })
    }    
  },
  created(){
    this.loadUsers();
    this.loadProduct();
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