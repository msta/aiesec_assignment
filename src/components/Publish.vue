<template>
  <div class="hello">
    <h2>Publish</h2>
    <ul>
      <li>
        <router-link to="subscribe">Subscribe</router-link>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'Publish',
  data () {
      return {
          msg: 'Default msg'
      }
  },
  created() {
    this.$store.dispatch('setPublishMsg',
    {
        publishMsg: 'Publish a msg',
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
