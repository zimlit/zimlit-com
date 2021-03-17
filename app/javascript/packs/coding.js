import Vue from 'vue'
import Coding from '../coding.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    render: h => h(Coding)
  }).$mount()
  document.body.appendChild(app.$el)

  console.log(app)
})
