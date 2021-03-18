<template>
  <div id="signup">
    <form @submit="submit">
      <label>username</label>
      <input v-model="username">
      <label>password</label>
      <input v-model="password">
      <input type="submit" value="Sign up">
    </form>
  </div>
</template>

<script>
import axios from 'axios'
  export default {
    data: function() {
      return {
        username: "",
        password: "",
      }
    },
    methods: {
      submit: function() {
        axios.post('/signup', {
          username: this.username,
          password: this.password,
        }).catch(function(error) {
          console.log(error)
        });
      }
    }
  }
</script>

<style>
</style>
