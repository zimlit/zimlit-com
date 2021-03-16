<template>
  <div class=navbar>
    <ul>
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
</template

<script>
export default {
}
</script>

<style scoped>
  .navbar {
    margin: 1em;
    border-radius: 25px;
    background: #555;
  }

  .nav-item {
    margin: 0.5em 1em 0.5em 1em;
    background: gray;
    display: inline-block;
    padding: 1em;
    border-radius: 5px;
  }

  .nav-item:hover {
    background: #777;
  }

  ul {
    list-style: none;
  }

  a {
    text-decoration: none;
    color: #369;
  }

  a:active {
    text-decoration: underline;
  }
</style>
