<template>
    <div>
        <router-link :to="{ name: 'Book' }" class="btn btn-primary">Back</router-link>
        <card-content class="mt-3">
            <div class="form-group my-1">
                <label for="judul">Title:</label>
                <input type="text" name="judul" id="judul" class="form-control" placeholder="Title" v-model="judul">
            </div>
            <div class="form-group my-1">
                <label for="penulis">Author:</label>
                <input type="text" name="penulis" id="penulis" class="form-control" placeholder="Author" v-model="penulis">
            </div>
            <div class="form-group my-1">
                <label for="total">Stock:</label>
                <input type="number" name="total" id="total" class="form-control" placeholder="Stock" min="1" v-model.number="total">
            </div>
            <div class="form-group my-1">
                <label for="genre_id">Genre:</label>
                <select name="genre_id" id="genre_id" class="form-select" v-model="genre_id">
                    <option value="0" v-if="!genre">Loading...</option>
                    <option v-for="item in genre" :key="item.id" :value="item.id">{{ item.genre }}</option>
                </select>
            </div>
            <button class="btn btn-primary mt-1" @click="whenSubmit" ref="save">Save</button>
        </card-content>
    </div>
</template>

<script>
import CardContent from '../components/CardContent.vue';
import { mapState } from 'vuex';
export default {
  components: { CardContent },
    data() {
        return {
            judul: null,
            penulis: null,
            total: 1,
            genre_id: 1
        };
    },
    created() {
        if (!this.genre) this.$store.dispatch('fetchGenre');
    },
    computed: mapState(['genre']),
    methods: {
        whenSubmit() {
            if (this.judul == '' || this.judul === null || this.penulis == '' || this.penulis === null) {
                alert('Title or Author is required!');
                return;
            }
            this.$refs.save.classList.add('disabled');
            this.$refs.save.innerHTML = 'Loading...';
            this.$store.dispatch('addBook', {
                judul: this.judul,
                penulis: this.penulis,
                total: this.total,
                genre_id: this.genre_id
            });
            this.$router.push({ name: 'Book' });
        }
    }
}
</script>

<style>

</style>