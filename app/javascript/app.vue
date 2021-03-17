<template>
  <div id="app">
    <Navigation />
    <h1 class="welcome">
      Zimlit.com
      <p>coding, cubing, conlanging, conworlding</p>
    </h1>
  </div>
</template>

<script>
import Navigation from './navigation'

export default {
  components: {
    Navigation
  },
}
</script>

<style scoped>
  .welcome {
    text-align: center;
  }
</style>
