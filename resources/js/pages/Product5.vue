<template>
  <div class="products">
    <Header/>
    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section text-left">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="breadcrumb-text product-more">
              <router-link to="/"><i class="fa fa-home"></i> Home</router-link>
              <span>Detail</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- Product Shop Section Begin -->
    <section class="product-shop spad page-details">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="row">
              <div class="col-lg-6">
                <div class="product-pic-zoom">
                  <img class="product-big-img" :src="jacket_wanita_1" alt="" />
                </div>
                <div class="product-thumbs">
                  <carousel
                    :dots="false"
                    :nav="false"
                    :loop="true"
                    :autoplay="true"
                    class="product-thumbs-track ps-slider"
                  >
                    <div
                      class="pt"
                      @click="changeImage(thumbs_jacket_wanita_1[0])"
                      :class="
                        thumbs_jacket_wanita_1[0] == jacket_wanita_1
                          ? 'active'
                          : ''
                      "
                    >
                      <img src="img/products/KEMEJA_CROPPED_KOTAK-KOTAK_1.jpg" alt="" />
                    </div>

                    <div
                      class="pt"
                      @click="changeImage(thumbs_jacket_wanita_1[1])"
                      :class="
                        thumbs_jacket_wanita_1[1] == jacket_wanita_1
                          ? 'active'
                          : ''
                      "
                    >
                      <img src="img/products/KEMEJA_CROPPED_KOTAK-KOTAK_2.jpg" alt="" />
                    </div>

                    <div
                      class="pt"
                      @click="changeImage(thumbs_jacket_wanita_1[2])"
                      :class="
                        thumbs_jacket_wanita_1[2] == jacket_wanita_1
                          ? 'active'
                          : ''
                      "
                    >
                      <img src="img/products/KEMEJA_CROPPED_KOTAK-KOTAK_3.jpg" alt="" />
                    </div>

                    <div
                      class="pt"
                      @click="changeImage(thumbs_jacket_wanita_1[3])"
                      :class="
                        thumbs_jacket_wanita_1[3] == jacket_wanita_1
                          ? 'active'
                          : ''
                      "
                    >
                      <img src="img/products/KEMEJA_CROPPED_KOTAK-KOTAK_4.jpg" alt="" />
                    </div>

                    <div
                      class="pt"
                      @click="changeImage(thumbs_jacket_wanita_1[4])"
                      :class="
                        thumbs_jacket_wanita_1[4] == jacket_wanita_1
                          ? 'active'
                          : ''
                      "
                    >
                      <img src="img/products/KEMEJA_CROPPED_KOTAK-KOTAK_5.jpg" alt="" />
                    </div>
                    <div
                      class="pt"
                      @click="changeImage(thumbs_jacket_wanita_1[4])"
                      :class="
                        thumbs_jacket_wanita_1[4] == jacket_wanita_1
                          ? 'active'
                          : ''
                      "
                    >
                      <img src="img/products/KEMEJA_CROPPED_KOTAK-KOTAK_6.jpg" alt="" />
                    </div>
                    
                  </carousel>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="product-details text-left">
                  <div class="pd-title">
                    <span>Jacket</span>
                    <h3>Batik Flanel Shirt</h3>
                  </div>
                  <div class="pd-desc">
                    <p>
                      Pakaian mewah dengan modal batik dan berbahan Flanel.
                    </p>
                    <h4>340.000 IDR</h4>
                  </div>
                  <div class="quantity">
                    <router-link to="/cart"
                      ><a href="shopping-cart.html" class="primary-btn pd-cart"
                        >Add To Cart</a
                      ></router-link
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <Footer/>
  </div>
</template>

<script>
import RelatedProduct from "../components/RelatedProduct.vue";
import carousel from "vue-owl-carousel";
import Header from "../components/HeaderFant.vue";
import Footer from "../components/Footer.vue";

export default {
  name: "products",
  components: {
    Header, 
    Footer,
    RelatedProduct,
    carousel,
  },
  data() {
    return {
      jacket_wanita_1: "img/products/KEMEJA_CROPPED_KOTAK-KOTAK_1.jpg",
      thumbs_jacket_wanita_1: [
        "img/products/KEMEJA_CROPPED_KOTAK-KOTAK_1.jpg",
        "img/products/KEMEJA_CROPPED_KOTAK-KOTAK_2.jpg",
        "img/products/KEMEJA_CROPPED_KOTAK-KOTAK_3.jpg",
        "img/products/KEMEJA_CROPPED_KOTAK-KOTAK_4.jpg",
        "img/products/KEMEJA_CROPPED_KOTAK-KOTAK_5.jpg",
        "img/products/KEMEJA_CROPPED_KOTAK-KOTAK_6.jpg",
        
      ],
    };
  },
  methods: {
    changeImage(urlImage) {
      this.jacket_wanita_1 = urlImage;
    },
  },
}
</script>

<style>
.product-thumbs .pt {
  margin-right: 10px;
}
</style>