<template>
  <center>
    <div class="error">
        <h1>Pages Not Found!</h1>
        <p>
          <a href="/">Go home?</a>
        </p>
    </div>
  </center>
</template>

<script>

  export default {
    name: 'NotFound'
  }

</script>

<style scoped>

  div .error {
    margin: 20%;
  }

  h1 {
    color: var(--border);
    font-size: 2em;
  }

</style>