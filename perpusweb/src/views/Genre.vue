<template>
    <div>
        <card-content>
            <div class="form-group">
                <input type="search" name="search" id="search" class="form-control mb-3" placeholder="Search">
            </div>
            <router-link :to="{ name: 'New Genre' }" class="btn btn-primary">New Genre</router-link>
        </card-content>
        <card-content class="mt-4">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Genre</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-if="!genre">
                            <td>Loading...</td>
                        </tr>
                        <tr v-for="item, index in genre" :key="index">
                            <td>{{ index + 1 }}</td>
                            <td>{{ item.genre }}</td>
                            <td>
                                <button class="btn btn-success me-1">View</button>
                                <button class="btn btn-warning mx-1">Edit</button>
                                <button class="btn btn-danger mx-1">Delete</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </card-content>
    </div>
</template>

<script>
import CardContent from '../components/CardContent.vue'
import { mapState } from 'vuex';

export default {
  components: { CardContent },
    created() {
        this.$store.dispatch('fetchGenre');
    },
    computed: mapState(['genre'])
}
</script>

<style>

</style>