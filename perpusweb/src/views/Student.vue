<template>
    <div>
        <card-content>
            <div class="form-group mb-3">
                <input type="search" name="search" id="search" class="form-control" placeholder="Search">
            </div>
            <button class="btn btn-primary me-1">New Student</button>
            <button class="btn btn-primary ms-1">New Class</button>
        </card-content>
        <card-content class="mt-4">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Name</th>
                            <th>Class</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="item, index in siswa" :key="index">
                            <td>{{ index + 1 }}</td>
                            <td>{{ item.name }}</td>
                            <td>XIV RPL Z</td>
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
        this.$store.dispatch('fetchStudent');
    },
    computed: mapState(['siswa'])
}
</script>

<style>

</style>