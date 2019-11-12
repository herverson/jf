import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Restaurant from '../views/Restaurant.vue'
import Dogs from '../views/Dogs.vue'
import Pet from '../views/Pet.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'home',
    component: Home
  },
  {
    path: '/restaurants/:id',
    name: 'restaurants',
    component: Restaurant
  },
  {
    path: '/dogs',
    name: 'dogs',
    component: Dogs
  },
  {
    path: '/pet',
    name: 'pet',
    component: Pet
  }

]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
