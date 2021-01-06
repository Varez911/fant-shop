<template>
  <div class="app" id="app">
    <div class="component-wrapper">
      <fakeDashboard/>
    </div>
  </div>
</template>

<script>
import fakeDashboard from "./DashboardScreen.vue"
import TableView from "../components/TableView.vue"
import data from "../data.js"

export default {
  components:{
    fakeDashboard,
    TableView
  },
  data: function () {
    return{
      Users: [],
      Products: [],
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

// center{
//   margin: 2%;
// }

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