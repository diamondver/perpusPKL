import Vue from 'vue'
import VueRouter from 'vue-router'
import Dashboard from '@/views/Dashboard.vue'
import Book from '@/views/Book.vue'
import Student from '@/views/Student.vue'
import Borrow from '@/views/Borrow.vue'
import Borrowed from '@/views/Borrowed.vue'
import BookView from '@/views/BookView.vue'
import Settings from '@/views/Settings.vue'
import Borrowing from '@/views/Borrowing.vue'
import Genre from '@/views/Genre.vue'
import NewBook from '@/views/NewBook.vue'
import NewGenre from '@/views/NewGenre.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'Dashboard',
    component: Dashboard
  },
  {
    path: '/book',
    name: 'Book',
    component: Book
  },
  {
    path: '/student',
    name: 'Student',
    component: Student
  },
  {
    path: '/borrow',
    name: 'Borrow',
    component: Borrow
  },
  {
    path: '/borrowed',
    name: 'Borrowed',
    component: Borrowed
  },
  {
    path: '/book/view/:id',
    name: 'Book View',
    props: true,
    component: BookView
  },
  {
    path: '/settings',
    name: 'Settings',
    component: Settings
  },
  {
    path: '/borrowing',
    name: 'Borrowing',
    component: Borrowing
  },
  {
    path: '/genre',
    name: 'Genre',
    component: Genre
  },
  {
    path: '/book/create',
    name: 'New Book',
    component: NewBook
  },
  {
    path: '/genre/create',
    name: 'New Genre',
    component: NewGenre
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
