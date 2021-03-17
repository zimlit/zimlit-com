import Vue from 'vue'
import Cubing from '../cubing.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    render: h => h(Cubing)
  }).$mount()
  document.body.appendChild(app.$el)

  console.log(app)
})
