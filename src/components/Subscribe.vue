<template>
  <div class="hello">
    <h2>Subscribe</h2>
    <ul>
      <li>
        <router-link to="publish">Publish</router-link>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'Subscribe',
  data () {
      return {
          msg: 'Subscribe message'
      }
  },
  created() {
    this.$store.dispatch('setSubscribeMsg',
    {
        subscribeMsg: 'Subscribe a msg',
    }).then((response) =>
    {
        // action done
       if(response !==false)
       {

       }
    });
  }
}
</script>
