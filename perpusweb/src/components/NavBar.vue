<template>
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm sticky-top">
        <div class="container-fluid">
            <button class="navbar-toggler" data-bs-toggle="offcanvas" data-bs-target="#offcanvas">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a href="#" class="navbar-brand">{{ $route.name }}</a>
            <div class="offcanvas offcanvas-start" id="offcanvas">
                <div class="offcanvas-header">
                    <h5>Perpus</h5>
                    <button class="btn-close text-reset" data-bs-dismiss="offcanvas"></button>
                </div>
                <div class="offcanvas-body">
                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3 d-block d-lg-none">
                        <li class="nav-item w-100 my-1">
                            <router-link :to="{ name: 'Dashboard' }" class="nav-link" exact-active-class="active rounded">Dashboard</router-link>
                        </li>
                        <li class="nav-item w-100 my-1">
                            <router-link :to="{ name: 'Book' }" class="nav-link" exact-active-class="active rounded">Book</router-link>
                        </li>
                        <li class="nav-item w-100 my-1">
                            <router-link :to="{ name: 'Genre' }" class="nav-link" exact-active-class="active rounded">Genre</router-link>
                        </li>
                        <li class="nav-item w-100 my-1">
                            <router-link :to="{ name: 'Student' }" class="nav-link" exact-active-class="active rounded">Student</router-link>
                        </li>
                        <li class="nav-item w-100 my-1">
                            <router-link :to="{ name: 'Borrow' }" class="nav-link" exact-active-class="active rounded">Borrow</router-link>
                        </li>
                        <li class="nav-item w-100 my-1">
                            <router-link :to="{ name: 'Borrowing' }" class="nav-link" exact-active-class="active rounded">Borrowing</router-link>
                        </li>
                    </ul>
                    <ul class="navbar-nav justify-content-end flex-grow-1 dropdown-custom">
                        <li class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">user23</a>
                            <ul class="dropdown-menu">
                                <li><router-link :to="{ name: 'Settings' }" class="dropdown-item">Settings</router-link>
                                <li><button class="dropdown-item" @click="whenLogOut">Log Out</button></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</template>

<script>
import { mapState } from 'vuex'

export default {
    methods: {
        whenLogOut() {
            localStorage.user = null;
            this.$state.dispatch('userLogOut');
        }
    },
    created() {
        this.user = localStorage.user;
    },
    data() {
        return {
            user: null
        };
    }
}
</script>

<style scoped>
.dropdown-custom {
    margin-right: 5rem;
}
</style>