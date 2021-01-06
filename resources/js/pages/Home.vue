<template>
  <div class="Home">
      <Header/>
      <CarouselFant/>
      <BannerFant/>
      <InstaFant/>
      <Partner/>
      <Footer/>
  </div>
</template>

<script>
import Header from "../components/HeaderFant.vue";
import CarouselFant from "../components/CarouselFant.vue";
import BannerFant from "../components/BannerFant.vue";
import InstaFant from "../components/InstaFant.vue";
import Partner from "../components/Partner.vue";
import Footer from "../components/Footer.vue";

export default {
    name: 'Home',
    components: {
        Header,
        CarouselFant,
        BannerFant,
        InstaFant,
        Partner,
        Footer,
    }    
}
</script>

<style>

</style>