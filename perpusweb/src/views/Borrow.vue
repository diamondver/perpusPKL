<template>
    <div>
        <card-content>
            <div class="form-group">
                <input type="search" class="form-control" placeholder="Search">
                <router-link :to="{ name: 'Borrowed' }" class="btn btn-primary mt-3">Borrowed <span class="badge bg-white text-black rounded-pill">0</span></router-link>
            </div>
        </card-content>
        <div class="row">
            <div class="col-lg-4">
                <card-content class="mt-4">
                    <h5>Title (Author)</h5>
                    <span class="text-black-50">Stock: 12</span>
                </card-content>
            </div>
        </div>
    </div>
</template>

<script>
import CardContent from '../components/CardContent.vue'
export default {
  components: { CardContent },

}
</script>

<style scoped>

</style>