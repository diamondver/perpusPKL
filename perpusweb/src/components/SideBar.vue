<template>
    <div>
        <h3 class="my-4 text-center text-uppercase text-white">Perpus</h3>
        <hr class="text-white">
        <ul class="nav nav-flex px-2">
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
    </div>
</template>

<script>
export default {

}
</script>

<style scoped>
.nav-item .nav-link {
    color: rgba(255, 255, 255, 0.85);
    font-weight: 500;
}
.nav-item .nav-link:hover {
    color: rgba(255, 255, 255, 0.95);
}
.nav-item .nav-link.active {
    color: rgb(255, 255, 255);
    background-color: rgba(255, 255, 255, 0.2);
}
h3 {
    font-weight: bold;
    letter-spacing: 3px;
}
</style>