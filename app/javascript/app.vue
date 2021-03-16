<template>
  <div id="app">
    <navigation />
    <h1 class="welcome">
      Zimlit.com
      <p>coding, cubing, conlanging, conworlding</p>
    </h1>
  </div>
</template>

<script>
import navigation from './navigation'

export default {

  components: {
    navigation
  }
}
</script>

<style scoped>
  .welcome {
    text-align: center;
  }
</style>
