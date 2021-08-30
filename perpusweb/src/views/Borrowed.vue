<template>
    <div>
        <router-link :to="{ name: 'Borrow' }" class="btn btn-primary">Back</router-link>
        <card-content class="mt-3">
            <div class="form-group">
                <label for="id">Student ID:</label>
                <input type="text" name="id" id="id" class="form-control mt-2" placeholder="Student ID">
            </div>
            <p class="m-0">Name:</p>
            <p class="m-0">Class:</p>
        </card-content>
        <card-content class="mt-4">
            <table class="table">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Title</th>
                        <th>Genre</th>
                        <th>Count</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Title</td>
                        <td>Sci-fi</td>
                        <td>
                            <button class="btn btn-primary btn-sm">-</button>
                            <span class="px-2">0</span>
                            <button class="btn btn-primary btn-sm">+</button>
                        </td>
                        <td>
                            <button class="btn btn-danger btn-sm">Delete</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </card-content>
    </div>
</template>

<script>
import CardContent from '../components/CardContent.vue'
export default {
  components: { CardContent },

}
</script>

<style>

</style>