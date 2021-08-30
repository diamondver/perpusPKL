<template>
    <div>
        <router-link class="btn btn-primary" :to="{ name: 'Book' }">Back</router-link>
        <card-content class="mt-3">
            <table class="table">
                <tbody>
                    <tr>
                        <th>Title</th>
                        <td>:</td>
                        <td>{{ dataBuku.judul }}</td>
                    </tr>
                    <tr>
                        <th>Author</th>
                        <td>:</td>
                        <td>{{ dataBuku.penulis }}</td>
                    </tr>
                    <tr>
                        <th>Genre</th>
                        <td>:</td>
                        <td>{{ genre[dataBuku.genre_id].genre }}</td>
                    </tr>
                    <tr>
                        <th>Available</th>
                        <td>:</td>
                        <td>{{ dataBuku.total }}</td>
                    </tr>
                </tbody>
            </table>
        </card-content>
    </div>
</template>

<script>
import CardContent from '../components/CardContent.vue';
import { mapState } from 'vuex'

export default {
  components: { CardContent },
    props: ['id'],
    data() {
        return {
            dataBuku: null
        };
    },
    computed: mapState(['book', 'genre']),
    created() {
        this.$store.dispatch('fetchBook');
        this.$store.dispatch('fetchGenre');
        this.dataBuku = this.book.filter(item => item.id === this.id);
        this.dataBuku = this.dataBuku[0];
    }
}
</script>

<style>

</style>