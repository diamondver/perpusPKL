import Vue from 'vue'
import Vuex from 'vuex'
import Services from '@/services/Services';

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    book: null,
    genre: null,
    student: null,
    chart: null
  },
  mutations: {
    SET_BOOK(state, data) {
      state.book = data;
    },
    SET_GENRE(state, data) {
      state.genre = data;
    },
    ADD_BOOK(state, data) {
      state.book.push(data);
    },
    SET_STUDENT(state, data) {
      state.student = data;
    },
    ADD_GENRE(state, data) {
      state.book.push(data);
    },
    SET_CHART(state, data) {
      state.chart = data;
    },
    EDIT_BOOK(state, data) {
      var i = 0;
      state.book.forEach(item => {
        if (item.id == data.id) {
          state.book[i].judul = data.judul;
          state.book[i].penulis = data.penulis;
          state.book[i].total = data.total;
          state.book[i].genre_id = data.genre_id;
        }
        i++;
      })
    },
    DELETE_BOOK(state, id) {
      state.book = state.book.filter(item => item.id !== id);
    }
  },
  actions: {
    fetchBook({ commit }) {
      return Services.getBook().then(res => {
        commit('SET_BOOK', res.data);
      });
    },
    fetchGenre({ commit }) {
      return Services.getGenre().then(res => {
        commit('SET_GENRE', res.data);
      });
    },
    addBook({ commit }, data) {
      return Services.postBook(data).then(res => {
        commit('ADD_BOOK', res.data);
      });
    },
    fetchStudent({ commit }) {
      return Services.getStudent().then(res => {
        commit('SET_STUDENT', res.data);
      });
    },
    addGenre({ commit }, data) {
      return Services.postGenre(data).then(res => {
        commit('ADD_GENRE', res.data);
      });
    },
    fetchChart({ commit }) {
      return Services.getThreeData().then(res => {
        commit('SET_CHART', res.data);
      });
    },
    editBook({ commit }, data) {
      return Services.putBook(data.id, data).then(res => {
        commit('EDIT_BOOK', res.data);
      });
    },
    deleteBook({ commit }, id) {
      return Services.deleteBook(id).then(res => {
        commit('DELETE_BOOK', res.data.id);
      });
    }
  },
  modules: {
  }
})
