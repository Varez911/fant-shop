<template>
  <section class="women-banner spad">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-12 mt-5">
          <carousel
            class="product-slider"
            :item="3"
            :nav="false"
            :autoplay="true"
            :dots="false"
            v-for="produk in Container" :key="produk.id"
          >
            <div class="product-item">
              <div class="pi-pic">
                <img :src="produk.gambar_barang" alt="" />
                <ul>
                  <li class="w-icon active">
                    <a href="#"><i class="icon_bag_alt"></i></a>
                  </li>
                  <li class="quick-view">
                    <router-link to="/product-2">+ Quick View</router-link>
                  </li>
                </ul>
              </div>
              <div class="pi-text">
                <div class="catagory-name">Pants</div>
                <router-link to="/product-2">
                  <a href="#">
                    <h5>{{produk.nama_barang}}</h5>
                  </a>
                </router-link>
                <div class="product-price">
                  {{produk.harga_barang}} IDR
                </div>
              </div>
            </div>
            
          </carousel>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import carousel from "vue-owl-carousel";

export default {
  components: { carousel },
  data: function(){
      return{

          Container: [],
      }
  },
  methods:{
      loadProducts: function(){
        axios.get('/api/getProduct')
        .then((response)=>{
          this.Container = response.data;
          // console.log(response);
        });
      },
  },
  mounted(){
    this.loadProducts();
  }
};
</script>

<style>
.product-item {
  margin-right: 25px;
}
</style>
