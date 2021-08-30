<template>
    <div>
        <div class="d-flex justify-content-center">
            <div class="btn-group">
                <button :class="['btn btn-outline-primary', btnActive == 1 ? 'active' : '']" @click="whenChanged(1)">Borrowing</button>
                <button :class="['btn btn-outline-primary', btnActive == 2 ? 'active' : '']" @click="whenChanged(2)">Late</button>
                <button :class="['btn btn-outline-primary', btnActive == 3 ? 'active' : '']" @click="whenChanged(3)">Completed</button>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            btnActive: 1
        };
    },
    methods: {
        whenChanged(id) {
            if (this.btnActive == id) return;
            this.btnActive = id;
        }
    }
}
</script>

<style>

</style>