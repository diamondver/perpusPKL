<template>
    <div>
        <router-link :to="{ name: 'Genre' }" class="btn btn-primary">Back</router-link>
        <card-content class="mt-3">
            <div class="form-group my-1">
                <label for="genre">Genre:</label>
                <input type="text" name="genre" id="genre" class="form-control" placeholder="Genre" v-model="genre1">
            </div>
            <button class="btn btn-primary mt-1" @click="whenSubmit" ref="save">Save</button>
        </card-content>
    </div>
</template>

<script>
import CardContent from '../components/CardContent.vue';
import { mapState } from 'vuex'

export default {
  components: { CardContent },
    data() {
        return {
            genre1: null
        };
    },
    created() {
        this.$store.dispatch('fetchGenre');
    },
    methods: {
        whenSubmit() {
            if (this.genre1 == '' || this.genre1 === null) {
                alert('Genre is required!');
                return;
            }
            this.$refs.save.classList.add('disabled');
            this.$refs.save.innerHTML = 'Loading...';
            this.$store.dispatch('addGenre', {
                genre: this.genre1
            }).then(() => this.$router.push({ name: 'Genre' }));
        }
    },
    computed: mapState(['genre'])
}
</script>

<style>

</style>