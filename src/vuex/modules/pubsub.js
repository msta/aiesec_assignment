import Vue from 'vue'
import * as types from '../mutation-types'
const state =
{
    msg_publish: null,
    msg_subscribe: null,
};

const mutations =
    {
        [types.SET_PUBLISH_MSG] (state, payload)
        {
          console.log(payload);
          state.msg_publish = payload;
        },
        [types.SET_SUBSCRIBE_MSG] (state, payload)
        {
          state.msg_subscribe = payload;
        },
    };

const actions = {
    setPublishMsg({ commit}, publishMsg )
    {
      commit(types.SET_PUBLISH_MSG, publishMsg);
    },
    setSubscribeMsg({ commit}, subscribeMsg )
    {
      commit(types.SET_SUBSCRIBE_MSG, subscribeMsg);
    },
};


const getters =
{
    getPublishMsg: state =>
    {
        return state.msg_publish
    },
    getSubscribeMsg: state =>
    {
        return state.msg_subscribe
    },
};

export default {
    state,
    mutations,
    actions,
    getters
}
