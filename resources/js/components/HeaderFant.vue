<template>
  <div class="home">
    <header class="header-section">
      <div class="container">
        <div class="inner-header">
          <div class="row">
            <div class="col-lg-2 col-md-2">
              <div class="logo">
                <router-link to="/">
                  <img :src="'img/logo_fant.svg'" alt="" />
                </router-link>
              </div>
            </div>
            <div class="col-lg-7 col-md-7"></div>
            <div v-if="user" class="col-lg-3 text-right col-md-3">
              <ul class="nav-right">
                <li class="cart-icon">
                  Guest
                  <i class="arrow_carrot-down">                    
                </i>
                  <div class="cart-hover">
                    <div class="select-button">                      
                      <a href="/" class="primary-btn proceed-btn">
                        Sign In
                        <i class="fas fa-sign-out-alt"></i>
                      </a>                      
                    </div>
                  </div>
                </li>
              </ul>
            </div>
            <div v-else class="col-lg-3 text-right col-md-3">
              <ul class="nav-right">
                <li class="cart-icon">
                  Varez
                  <i class="arrow_carrot-down">                    
                </i>
                  <div class="cart-hover">
                    <div class="select-button">                      
                      <a href="/" class="primary-btn checkout-btn" @click.prevent="user = 'Varez'">
                        Log Out
                        <i class="fas fa-sign-out-alt"></i>
                      </a>                      
                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </header>
  </div>
</template>

<script>
export default {
  name: "HeaderFant",
  data: function(){
    return {
      user: ''
    }
  },
  props: ['username'],
};
</script>

<style></style>
