<template>
    <div class="pt-5 pb-5">
        <div class="row">
            <div class="col-12 col-md-6 col-lg-4 mt-1 mb-1" v-for="product in products" v-bind:key="product.id">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">{{product.name}}</h4>
                        <p class="card-text">{{product.description.substring(0,100)}}
                            <span v-if="product.description.length>=100">...</span></p>
                        <p class="card-text">
                            <span class="badge">SKU: {{product.sku}}</span> |
                            <span class="badge">Inventory: {{product.inventory}}</span>
                        </p>
                        <div class="row">
                            <div class="col">
                                <router-link class="btn btn-warning btn-block" :to="{name:'edit-path', params:{id: product.id}}">Edit</router-link>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <!--<div class="col-12 mt-4">-->
                <!--<nav aria-label="...">-->
                    <!--<ul class="pagination">-->
                        <!--<li class="page-item disabled">-->
                            <!--<a class="page-link" href="#" tabindex="-1">Previous</a>-->
                        <!--</li>-->
                        <!--<li class="page-item"><a class="page-link" href="#">1</a></li>-->
                        <!--<li class="page-item active">-->
                            <!--<a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>-->
                        <!--</li>-->
                        <!--<li class="page-item"><a class="page-link" href="#">3</a></li>-->
                        <!--<li class="page-item">-->
                            <!--<a class="page-link" href="#">Next</a>-->
                        <!--</li>-->
                    <!--</ul>-->
                <!--</nav>-->
            <!--</div>-->
        </div>

    </div>
</template>

<script>
    export default {
        name: "Products",
        data() {
            return {
                products: [],
                product: {
                    id: '',
                    name: '',
                    sku: '',
                    description: '',
                    inventory: ''
                },
                product_id: '',
                pagination: {},
                edit: false,
            }
        },
        created() {
            this.fetchProducts();
        },
        methods: {
            fetchProducts() {
                fetch('api/products')
                    .then(res => res.json())
                    .then(res => {
                        this.products = res;
                    }).catch(err => console.log(err));
            }
        }
    }
</script>

<style scoped>

</style>