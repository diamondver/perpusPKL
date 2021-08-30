<template>
    <div>
        <card-content>
            <div class="form-group">
                <input type="search" name="search" id="search" class="form-control mb-3" placeholder="Search">
            </div>
            <router-link :to="{ name: 'New Book' }" class="btn btn-primary">New Book</router-link>
        </card-content>
        <card-content class="mt-4">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Title</th>
                            <th>Author</th>
                            <th>Available</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-if="!book">
                            <td>Loading...</td>
                        </tr>
                        <tr v-for="item, index in book" :key="index">
                            <td>{{ index + 1 }}</td>
                            <td>{{ item.judul }}</td>
                            <td>{{ item.penulis }}</td>
                            <td>{{ item.total }}</td>
                            <td>
                                <router-link :to="{ name: 'Book View', params: { id: item.id } }" class="btn btn-success me-1">View</router-link>
                                <button data-bs-toggle="modal" data-bs-target="#edit" class="btn btn-warning mx-1" @click="whenEdit(item.id)">Edit</button>
                                <button class="btn btn-danger mx-1" @click="whenDeleted(item.id)">Delete</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </card-content>

        <div class="modal fade" id="edit">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Edit</h5>
                        <button class="btn-close" data-bs-dismiss="modal"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group my-1">
                            <label for="judul">Title:</label>
                            <input type="text" name="judul" id="judul" class="form-control" v-model="judul" placeholder="Title">
                        </div>
                        <div class="form-group my-1">
                            <label for="penulis">Author:</label>
                            <input type="text" name="penulis" id="penulis" class="form-control" v-model="penulis" placeholder="Author">
                        </div>
                        <div class="form-group my-1">
                            <label for="total">Available:</label>
                            <input type="number" name="total" id="total" class="form-control" v-model="total" placeholder="Available">
                        </div>
                        <div class="form-group my-1">
                            <label for="genre_id">Genre:</label>
                            <select name="genre_id" id="genre_id" class="form-select" v-model="genre_id">
                                <option value="0" v-if="!genre">Loading...</option>
                                <option v-for="item in genre" :key="item.id" :value="item.id">{{ item.genre }}</option>
                            </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                        <button class="btn btn-success" @click="whenSubmit">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import CardContent from '../components/CardContent.vue'
import { mapState } from 'vuex'

export default {
  components: { CardContent },
    created() {
        if (!this.book) this.$store.dispatch('fetchBook');
        if (!this.book) this.$store.dispatch('fetchGenre');
    },
    computed: mapState(['book', 'genre']),
    data() {
        return {
            judul: null,
            penulis: null,
            total: null,
            genre_id: null,
            idActive: null
        };
    },
    methods: {
        whenEdit(id) {
            var dataBuku = this.book.filter(item => item.id == id);
            dataBuku = dataBuku[0];
            this.judul = dataBuku.judul;
            this.penulis = dataBuku.penulis;
            this.total = dataBuku.total;
            this.genre_id = dataBuku.genre_id;
            this.idActive = id;
        },
        whenSubmit() {
            this.$store.dispatch('editBook', {
                id: this.idActive,
                judul: this.judul,
                penulis: this.penulis,
                total: this.total,
                genre_id: this.genre_id
            });
        },
        whenDeleted(id) {
            if (confirm('Are you sure you want to delete this data?')) {
                this.$store.dispatch('deleteBook', id);
            }
        }
    }
}
</script>

<style>

</style>