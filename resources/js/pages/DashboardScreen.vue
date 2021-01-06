<template>
  <div class="dashboard">
    <div id="navigation-page">
      <div id="main">
        <nav v-bind:class="active" v-on:click.prevent>
          <a href="#" class="Users" v-on:click="active = 'Users'; loadData(active);">User</a>
          <a href="#" class="Products" v-on:click="active = 'Products'; loadData(active);">Barang</a>
          <a href="#" class="Transaksi" v-on:click="active = 'Transaksi'; loadData(active);">Transaksi</a>
        </nav>
      
      <div class="table-content">
        <router-link :to="'/dashboard-insert'+active">
        <button type="button" class="btn btn-success  mr-2" style="float: right;margin: 1rem;">+ Add Data</button>

        </router-link>
        <table class="table">
          <thead class="thead-dark">
            <tr>
              <th scope="col">ID</th>
              <th scope="col">Name</th>

              <th v-if="active == 'Users'">Email</th>
              <th v-if="active == 'Users'">Password</th>
              <th v-if="active == 'Users'">Status</th> 

              <th v-if="active == 'Products'">Harga</th>
              <th v-if="active == 'Products'">Stok</th>

              <th v-if="active == 'Transaksi'">Barang</th>
              <th v-if="active == 'Transaksi'">Banyak Barang</th>
              <th v-if="active == 'Transaksi'">Total Harga</th>
              <th v-if="active == 'Transaksi'">Tanggal Transaksi</th>
               <th>Action</th> 
            </tr>
          </thead>
          <tbody>
            <tr v-for="data in Container" :key="data.id_user">
              <td v-if="active == 'Users'">{{data.id_user}}</td>              
              <td v-if="active == 'Users'">{{data.nama_user}}</td>
              <td v-if="active == 'Users'">{{data.email_user}}</td>
              <td v-if="active == 'Users'">{{data.password_user}}</td>
              <td v-if="active == 'Users'">{{data.status}}</td>
              
              <td v-if="active == 'Products'">{{data.id_barang}}</td>              
              <td v-if="active == 'Products'">{{data.nama_barang}}</td>
              <td v-if="active == 'Products'">{{data.harga_barang}}</td>
              <td v-if="active == 'Products'">{{data.stok_barang}}</td>

              <td v-if="active == 'Transaksi'">{{data.id_transaksi}}</td>              
              <td v-if="active == 'Transaksi'">{{data.id_pelanggan}}</td>
              <td v-if="active == 'Transaksi'">{{data.id_barang}}</td>
              <td v-if="active == 'Transaksi'">{{data.jumlah_barang}}</td>
              <td v-if="active == 'Transaksi'">{{data.total_harga}}</td>
              <td v-if="active == 'Transaksi'">{{data.tgl_transaksi}}</td>
              <td>
                <router-link :to="'/dashboard-editUser/'+data.id_user" v-if="active == 'Users'" type="button" class="btn btn-warning  mr-2"><i class="icon_pencil-edit "></i></router-link>
                <router-link :to="'/dashboard-editBarang/'+data.id_barang" v-if="active == 'Products'" type="button" class="btn btn-warning  mr-2"><i class="icon_pencil-edit "></i></router-link>
                <router-link :to="'/dashboard-editTransaksi/'+data.id_transaksi" v-if="active == 'Transaksi'" type="button" class="btn btn-warning  mr-2"><i class="icon_pencil-edit "></i></router-link>
                <router-link to="/dashboard">
                <button  v-if="active == 'Users'" type="button" class="btn btn-danger" @click="deleteUser(data.id_user)"><i class="icon_trash"></i></button>
                <button  v-if="active == 'Products'" type="button" class="btn btn-danger" @click="deleteProduct(data.id_barang)"><i class="icon_trash"></i></button>
                <button  v-if="active == 'Transaksi'" type="button" class="btn btn-danger" @click="deleteTransaksi(data.id_transaksi)"><i class="icon_trash"></i></button>
                </router-link>
              </td>
            </tr>
          </tbody>
        </table>
        <!-- <h2>Bottom</h2> -->
      </div>
      </div>
    </div>
  </div>
</template>

<script>
import TableView from "../components/TableView.vue"
import {columns} from "../data"

export default {
  components: {
    TableView
  },
  data: function () {
    return{
      active: 'Users',
      No: 0,
      Container : '',
      Headers: columns,
      sort1:{
        field: 'first_name',
        order: 'asc'
      },
      pagination:{
        itemsPerPage: 7,
        align: 'center',
        visualStyle: 'select'
      }
      // title: globalData.dataShared
    }
  },
    methods:{
      loadData: function(queryURL){
        if (queryURL == 'Users'){
          axios.get('/api/getUsers')
          .then((response)=>{
            this.Container = response.data;
          })
        }
        else if (queryURL == 'Products'){
          axios.get('/api/getProduct')
          .then((response)=>{
            this.Container = response.data;
          })
        }
        else if (queryURL == 'Transaksi'){
          axios.get('/api/getTransaksi')
          .then((response)=>{
            this.Container = response.data;
          })
        }
      },

      loadUsers: function(){
        axios.get('/api/getUsers')
        .then((response)=>{
          this.Container = response.data;
          // console.log(response);
        });
      },
      deleteUser(id){
        console.log({id});        
        axios.get('/api/deleteUser-'+id)          
        this.loadUsers();
      },
      deleteProduct(id){
        console.log({id});        
        axios.get('/api/deleteProduct-'+id)          
      },
      deleteTransaksi(id){
        console.log({id});        
        axios.get('/api/deleteTransaksi-'+id);
                         
      }
  },
  created(){
    this.loadUsers();
  },
}
</script>

<style>
*{
  margin:0;
  padding:0;
}

body{
  font:15px/1.3 'Open Sans', sans-serif;
  color: #5e5b64;
  text-align:center;
}

a, a:visited {
  outline:none;
  color:#389dc1;
}

a:hover{
  text-decoration:none;
}

section, footer, header, aside, nav{
  display: block;
}

.table-content {
  margin:20px 3.5rem 45px;
  border: #5e5b64;
}

/*-------------------------
  The menu
--------------------------*/

nav{
  display:flex;
  margin:30px 2rem 20px;
  background-color: #34495E;
  box-shadow:0 1px 1px #ccc;
  border-radius:2px;
}

nav a{
  display:inline-block;
  padding: 18px 30px;
  color:#fff !important;
  font-weight:bold;
  font-size:16px;
  text-decoration:none !important;
  line-height:1;
  text-transform: uppercase;
  background-color:transparent;

  -webkit-transition:background-color 0.25s;
  -moz-transition:background-color 0.25s;
  transition:background-color 0.25s;
}

nav a:first-child{
  border-radius:2px 0 0 2px;
}

nav a:last-child{
  border-radius:0 2px 2px 0;
}

nav.Users .Users,
nav.Products .Products,
nav.Transaksi .Transaksi{
  background-color:#41B883;
}

p{
  font-size:22px;
  font-weight:bold;
  color:#7f987d;
}

p b{
  color:#ffffff;
  display:inline-block;
  padding:5px 10px;
  background-color:#c4d7e0;
  border-radius:2px;
  text-transform:uppercase;
  font-size:18px;
}
.resource {
  margin: 20px 0;
}

</style>
<style lang="scss">
@import url(http://fonts.googleapis.com/css?family=Roboto+Mono);

body, html{
  height: 100%;
}  

h1{
  margin-bottom: 2em;
  color: #f90;
}
.separator{
  margin: 2em 0;
  text-align: center;
}
.custom-style {
  // Table styles
  .ozn-table {
    border-collapse: collapse;
    width: 100%;
    thead {
      th { 
        border-bottom: 1px solid #ffffff;
        padding: 0 10px;
        height: 48px;
        text-align: left; 
        font-size: 1em; 
        color: #fff;
        background-color: #10c000; 
        cursor: pointer; 
        &:hover{
          span{
            text-decoration: underline;
            text-decoration-style: dotted;
          }
        }        
        i{
          color: #ffffff; 
          &.active{
            color: #ff00aa;
            + span{
              color: #a9237c;
            }
          }
        }       
      }
    }
    tbody {
      tr{
        &:nth-child(odd){
          background-color: #e9f5ff;
        }
        &:nth-child(even){
          background-color: #fafaeb;
        }
      }
      td {
        border-bottom: 1px solid #ffffff;
        padding: 0 10px;
        height: 48px;
        font-size: 1em; 
      }
    }
  }
  // Paginator styles    
  .ozn-paginator{
    margin-top: .5em;
    select{
      border: 1px solid #0a7700;
      border-radius: 8px;
      color: #ffffff;
      background-color:  #0a7700;
      outline: none;
    }
    button{
      border: 1px solid #0a7700;
      border-radius: 8px;
      color: #ffffff;
      background-color:  #0a7700;
      outline: none;
    }    
  }

}
</style>