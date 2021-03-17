<template>
  <div id="coding">
    <Navigation />
    <p class="github">
      <a class="github-button" href="https://github.com/zimlit">
      github
      </a>
    </p>
    <div class="sect">
      <h1 class="label">
        projects
      </h1>
      <ul>
        <li>
          <a href="https://github.com/zimlit/zimilt-com">
            this website
          </a>
        </li>
        <li>
          <a href="https://github.com/zimlit/valley">
            the valley programing language 
          </a>
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
import Navigation from './navigation'
  console.log("inside of codiing.vue");
  export default {
    components: {
      Navigation
    }
  }
</script>

<style>
  .github {
    background: #555;
    text-align: center;
    margin: 1em;
    border-radius: 25px;
    padding: 1em;
  }

  li {
    display: block;
    background-color: grey;
    margin-bottom: 2em;
    padding: .5em 1em;
    border-radius: 5px;
  }

  ul {
    text-align: center;
    padding: 1em;
  }
</style>
