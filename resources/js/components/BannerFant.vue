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
          >
            <div class="product-item">
              <div class="pi-pic">
                <img src="img/products/Highneck_sweatshirt_dress_5.jpg" alt="" />
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
                    <h5>Highnect Sweater</h5>
                  </a>
                </router-link>
                <div class="product-price">
                  240.000 IDR
                </div>
              </div>
            </div>
            <div class="product-item">
              <div class="pi-pic">
                <img src="img/products/JAKET_BULU_IMITASI_4.jpg" alt="" />
                <ul>
                  <li class="w-icon active">
                    <a href="#"><i class="icon_bag_alt"></i></a>
                  </li>
                  <li class="quick-view">
                    <router-link to="/product-1">+ Quick View</router-link>
                  </li>
                </ul>
              </div>
              <div class="pi-text">
                <div class="catagory-name">Jacket</div>
                <router-link to="/product-1">
                  <a href="#">
                    <h5>Denim Jacket Tracker</h5>
                  </a>
                </router-link>
                <div class="product-price">
                  230.000 IDR
                </div>
              </div>
            </div>
            <div class="product-item">
              <div class="pi-pic">
                <img src="img/products/KEMEJA_CROPPED_KOTAK-KOTAK_4.jpg" alt="" />
                <ul>
                  <li class="w-icon active">
                    <a href="#"><i class="icon_bag_alt"></i></a>
                  </li>
                  <li class="quick-view">
                    <router-link to="/product-5">+ Quick View</router-link>
                  </li>
                </ul>
              </div>
              <div class="pi-text">
                <div class="catagory-name">Shirt</div>
                <router-link to="/product-5">
                  <a href="#">
                    <h5>Batik Flanel Shirt</h5>
                  </a>
                </router-link>
                <div class="product-price">
                  340.000 IDR
                </div>
              </div>
            </div>
            <div class="product-item">
              <div class="pi-pic">
                <img
                  src="img/products/JAKET_LUAR_BERSABUK_3.jpg"
                  alt=""
                />
                <ul>
                  <li class="w-icon active">
                    <a href="#"><i class="icon_bag_alt"></i></a>
                  </li>
                  <li class="quick-view">
                    <router-link to="/product-3">+ Quick View</router-link>
                  </li>
                </ul>
              </div>
              <div class="pi-text">
                <div class="catagory-name">Jacket</div>
                <router-link to="/product-3">
                  <a href="#">
                    <h5>Summer Coat Jacket</h5>
                  </a>
                </router-link>
                <div class="product-price">
                  650.000 IDR
                </div>
              </div>              
            </div>
            <div class="product-item">
              <div class="pi-pic">
                <img
                  src="img/products/KEMEJA_WATER_REPELLENT_3.jpg"
                  alt=""
                />
                <ul>
                  <li class="w-icon active">
                    <a href="#"><i class="icon_bag_alt"></i></a>
                  </li>
                  <li class="quick-view"><router-link to="/product">+ Quick View</router-link></li>
                  
                </ul>
              </div>
              <div class="pi-text">
                <div class="catagory-name">Jacket</div>
                <a href="#">
                  <h5>Winter Coat Jacket</h5>
                </a>
                <div class="product-price">
                  540.000 IDR
                </div>
              </div>              
            </div>
            <div class="product-item">
              <div class="pi-pic">
                <img
                  src="img/products/Florida_print_sweatshirt_5.jpg"
                  alt=""
                />
                <ul>
                  <li class="w-icon active">
                    <a href="#"><i class="icon_bag_alt"></i></a>
                  </li>
                  <li class="quick-view"><router-link to="/product-4">+ Quick View</router-link></li>
                  
                </ul>
              </div>
              <div class="pi-text">
                <div class="catagory-name">Jacket</div>
                <router-link to="/product-4">
                  <a href="#">
                    <h5>Florida Sweet Sweater</h5>
                  </a>
                </router-link>
                <div class="product-price">
                  340.000 IDR
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
};
</script>

<style>
.product-item {
  margin-right: 25px;
}
</style>
