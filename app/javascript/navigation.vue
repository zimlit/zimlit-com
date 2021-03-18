<template>
  <div id="nav">
    <a  class="button" href="/login" v-if="!logged_in">login</a>
    <h1 v-if="!logged_in">|</h1>
    <a class="button" href="/users/new" v-if="!logged_in">sign up</a>
    <h1 v-if="logged_in">
      {{user}} | <button type=button v-if="logged_in" @click="logout">logout</button>
    </h1>
    <ul>
      <li class="nav-item">
        <a href="/">
          home
        </a>
      </li>
      <li class="nav-item">
        <a href="/coding">
          coding
        </a>
      </li>

      <li class="nav-item">
        <a href="/cubing">
          cubing
        </a>
      </li>

      <li class="nav-item">
        <a href="/conlanging">
          conlanging
        </a>
      </li>

      <li class="nav-item">
        <a href="/conworlding">
          conworlding
        </a>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  data: function() {
    return {
      logged_in: null,
      user: ""
    }
  },
  methods: {
    logout: function() {
      fetch('/logout', {method: 'POST'}).then(r => window.location.href = 'home')
    }
  },
  
    created: function() {
      var res;
      fetch('/logged_in')
        .then(response => response.json())
        .then(data => this.logged_in = data.logged_in);
      fetch('/current')
        .then(response => response.json())
        .then(data => this.user = data.current.username)
        .catch(err => err);
    }
}
</script>

<style scoped>
  #nav {
    margin: 1em;
    border-radius: 25px;
    background: #555;
    font-size: 2vw;
    size: 50%;
  }

  .nav-item {
    margin: 0.5em 1em 0.5em 1em;
    background: gray;
    display: inline-block;
    padding: 0.5em 1em 0.5em 1em;
    border-radius: 5px;
  }

  .nav-item:hover {
    background: #777;
  }

  button {
    background: transparent;
    border: transparent;
    float: right;
    color: #369; 
    font-size: 1vw;
    margin: 0;
    padding: 0;
    margin-right: 0.5em
  }

  ul {
    list-style: none;
    text-align: center;
    padding: 0em;
  }

  .button {
    float: right;
    font-size: 1vw;
    margin-right: 1.5em;
    margin-top: 0.5em;
  }
  h1 {
    font-size: 1vw;
    float: right;
    margin-right: 0.6em;
  }

</style>
