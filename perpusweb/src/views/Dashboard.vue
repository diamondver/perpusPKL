<template>
    <div>
        <div class="row">
            <div class="col-lg-4">
                <card-content>
                    <h5>Book Available</h5>
                    <h3 class="text-center mt-3">12</h3>
                </card-content>
            </div>
            <div class="col-lg-4 pt-4 pt-lg-0">
                <card-content>
                    <h5>Book Borrowed</h5>
                    <h3 class="text-center mt-3">12</h3>
                </card-content>
            </div>
            <div class="col-lg-4 pt-4 pt-lg-0">
                <card-content>
                    <h5>Book missing this month</h5>
                    <h3 class="text-center mt-3">12</h3>
                </card-content>
            </div>
        </div>
        <card-content class="mt-4">
            <div class="d-flex justify-content-between">
                <h5>Book Available</h5>
                <div class="btn-group btn-group-sm">
                    <button :class="['btn btn-outline-primary', btnActive == 1 ? 'active' : '' ]" @click="whenChanged(1)">Years</button>
                    <button :class="['btn btn-outline-primary', btnActive == 2 ? 'active' : '' ]" @click="whenChanged(2)">Months</button>
                    <button :class="['btn btn-outline-primary', btnActive == 3 ? 'active' : '' ]" @click="whenChanged(3)">This Month</button>
                </div>
            </div>
            <canvas ref="chart"></canvas>
        </card-content>
    </div>
</template>

<script>
import CardContent from '../components/CardContent.vue'
import Chart from 'chart.js/auto';
import { mapState } from 'vuex';

export default {
  components: { CardContent },
    data() {
        return {
            btnActive: 1,
            chartActive: null
        };
    },
    methods: {
        whenChanged(id) {
            if (this.btnActive == id) return;
            this.btnActive = id;
            var thisYear = new Date().getFullYear();
            var month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
            switch(id) {
                case 1:
                    this.chartActive.data.labels = [thisYear - 2, thisYear - 1, thisYear, thisYear + 1, thisYear + 2];
                    this.chartActive.data.datasets[0].data = [20, 30, 5, 14, 7];
                    this.chartActive.options.scales.y.max = Math.max(20, 30, 5, 14, 7) + 10;
                    this.chartActive.update();
                    break;
                case 2:
                    this.chartActive.data.labels = month;
                    this.chartActive.data.datasets[0].data = [12, 5, 7, 10, 7, 8, 18, 13, 17, 18, 14, 15];
                    this.chartActive.options.scales.y.max = Math.max(12, 5, 7, 10, 7, 8, 18, 13, 17, 18, 14, 15) + 10;
                    this.chartActive.update();
                    break;
                case 3:
                    break;
            }
        }
    },
    mounted() {
        var thisYear = new Date().getFullYear();
        var data = [20, 30, 5, 14, 7];
        this.chartActive = new Chart(this.$refs.chart.getContext('2d'), {
            type: 'bar',
            data: {
                labels: [thisYear - 2, thisYear - 1, thisYear, thisYear + 1, thisYear + 2],
                datasets: [
                    {
                        label: 'Book',
                        data: data,
                        backgroundColor: ['rgba(13,110,253, .2)'],
                        borderWidth: 1,
                        borderColor: ['rgb(13,110,253)']
                    }
                ]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true,
                        max: Math.max(...data) + 10
                    },
                }
            }
        });
    },
    created() {
        this.$store.dispatch('fetchChart');
    },
    computed: mapState(['chart'])
}
</script>

<style>

</style>