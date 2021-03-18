import Vue from 'vue'
import Signup from '../signup.vue'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    render: h => h(Signup)
  }).$mount()
  document.body.appendChild(app.$el)

  console.log(app)
})
