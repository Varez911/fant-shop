<template>
  <!-- Hero Section Begin -->
  <section class="hero-section">
    <carousel class="hero-items" :items="1" :nav="false">
      <div
        class="single-hero-items set-bg"
        style="background-image: url('/img/landscape_1.jpg')"
      >
        <div class="container">
          <div class="row">
            <div class="col align-self-center">
              <h1 class="text-black">New Arrival</h1>
              <a href="#" class="btn btn-outline-black">Shop Now</a>
            </div>
          </div>
        </div>
      </div>
      <div
        class="single-hero-items set-bg"
        style="background-image: url('/img/landscape_2.jpg')"
      >
        <div class="container">
          <div class="row">
            <div class="col align-self-center">
              <h1 class="text-light">Winter Edition</h1>
              <a href="#" class="btn btn-outline-light">Shop Now</a>
            </div>
          </div>
        </div>
      </div>
      <div
        class="single-hero-items set-bg"
        style="background-image: url('/img/landscape_3.jpg')"
      >
        <div class="container">
          <div class="row">
            <div class="col align-self-center">
              <h1 class="text-light">Black friday</h1>
              <a href="#" class="btn btn-outline-light">Shop Now</a>
            </div>
          </div>
        </div>
      </div>
    </carousel>
  </section>
  <!-- Hero Section End -->
</template>

<script>
import carousel from "vue-owl-carousel";

export default {
  components: { carousel },
};
</script>

<style></style>
