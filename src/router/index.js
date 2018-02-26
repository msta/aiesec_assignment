import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Publish from '@/components/Publish'
import Subscribe from '@/components/Subscribe'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'HelloWorld',
      component: HelloWorld
    },
    {
      path: '/publish',
      name: 'Publish',
      component: Publish
    },
    {
      path: '/subscribe',
      name: 'Subscribe',
      component: Subscribe
    }
  ]
})
