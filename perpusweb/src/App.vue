<template>
  <div id="app">
    <div class="row m-0" style="height: 100vh;" v-if="$route.name != 'Login'">
      <div class="col-lg-2 bg-primary d-none d-lg-block">
        <side-bar />
      </div>
      <div class="col-lg-10 p-0 overflow-auto" style="height: 100vh">
        <nav-bar />
        <router-view class="container my-4"/>
      </div>
    </div>
    <div v-if="$route.name == 'Login'">
      <router-view />
    </div>
  </div>
</template>

<script>
import NavBar from './components/NavBar.vue'
import SideBar from './components/SideBar.vue'
export default {
  components: { SideBar, NavBar },
  
}
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
body {
  font-family: 'Poppins', sans-serif;
}
</style>
