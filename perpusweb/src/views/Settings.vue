<template>
    <div>
        <card-content>
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" name="username" id="username" class="form-control" placeholder="Username">
            </div>
            <div class="form-group mt-2">
                <label for="email">Email:</label>
                <input type="email" name="email" id="email" class="form-control" placeholder="Email">
            </div>
            <div class="row">
                <div class="form-group col-lg-6 mt-2">
                    <label for="password">Password:</label>
                    <input type="password" name="password" id="password" class="form-control" placeholder="Password">
                </div>
                <div class="form-group col-lg-6 mt-2">
                    <label for="repassword">Confirm Password:</label>
                    <input type="password" name="password_confirmation" id="repassword" class="form-control" placeholder="Confirm Password">
                </div>
            </div>
            <div class="form-group mt-2">
                <label for="oldPassword">Old Password</label>
                <input type="password" name="oldPassword" id="oldPassword" class="form-control" placeholder="Old Password">
            </div>
            <button class="btn btn-primary col-12 mt-2">Save</button>
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