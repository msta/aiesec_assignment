import  Vue from 'vue'
import createPersistedState from 'vuex-persistedstate'
import Vuex from 'vuex'
import pubsub from './modules/pubsub'
Vue.use(Vuex);
const store = new Vuex.Store({
    modules: {
      pubsub
    },
    plugins: [createPersistedState()],
    strict:false
});
export default store