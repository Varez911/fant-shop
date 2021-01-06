<template>
  <div id="app">
    <div class="component-wrapper">
      <div class="wrapper" v-bind:class="[show ? 'activeClass' : '']" >
    <div class="preload">
    </div>
    <div class="placeholder">
    </div>
		<transition name="trial" appear>
      <div class="content">
        <div class="form-wrapper image-after-login">
          <div class="flip-img-wrapper">
            <transition name="fade-profile-pic">
              <h2>Login Admin</h2>
              <img  v-if="name === 'user'" class="user-profile" :src="imgSrc" alt="user-profile-pic" v-image />
              <icon v-if="name !== 'user'" class="user-icon image-after-login" name="user-circle-o"></icon>
            </transition>
          </div>
          <form class="animate-form">
              <div class="textbox-wrapper">
                <input  v-model="name" class="text-box" type="text" placeholder="Username"/>
                    <span class="user-o-icon">
                        <icon name="user-o"></icon>
                    </span>
              </div>
              <div class="textbox-wrapper">
                <input class="text-box" type="password" placeholder="Password"/>
                    <span class="lock-icon">
                        <icon name="lock"></icon>
                    </span>
              </div>
              <button type="submit"  v-on:click.prevent="onSubmit" class="btn submit-btn" >
                  <span class="login-text">LOGIN</span>
              </button>
          </form>
        </div>
      </div>
		</transition>
  </div>
    </div>
  </div>
</template>

<script>
// import LoginScreen from '../components/LoginScreen.vue'

export default {
  name: 'App',
  data () {
    return {
      show: false,
      name: '',
      imgSrc: require('../assets/userTwo.jpg')
    }
  },
  methods: {
    onSubmit: function () {
      console.log('??')
      this.show = true
      setTimeout(() => {
        this.$router.push('/dashboard')
      }, 2000)
    },
    customHook: function (el) {
      console.log('on render')
    },
    // foo: function () {
    //   return <icon name="spinner" />
    // }
  },
  // components: {
  //   LoginScreen
  // }
}
</script>

<style lang="scss" scoped>
@import "../../sass/designLoginPage.scss";
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
