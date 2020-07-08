<template>
    <div class="mt-3 mb-3 p-2">
        <form class="col-md-6 offset-md-3 border" @submit.prevent="addProduct">
            <h3 class="text-center text-bold pt-2 mb-3">
                <span v-if="edit">Edit </span><span v-if="!edit">Add </span>Product
            </h3>
            <!--success Message-->
            <div class="alert alert-success alert-dismissible fade show" role="alert" v-if="saveSuccess">
                <strong>Success</strong> {{this.successText}}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <!--Error Message-->
            <div class="alert alert-danger alert-dismissible fade show" role="alert" v-if="errors.length">
                <strong>Error!</strong><br>
                <ul>
                    <li v-for="error in errors">{{ error }}</li>
                </ul>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="form-group">
                <label for="">Name</label>
                <input type="text" class="form-control" placeholder="Name" v-model="product.name">
            </div>

            <div class="form-group">
                <label for="">Description</label>
                <textarea class="form-control" rows="3" placeholder="Description"
                          v-model="product.description"></textarea>
            </div>
            <div class="form-group">
                <label for="">Inventory</label>
                <input type="text" class="form-control" placeholder="Inventory" v-model="product.inventory"
                       @input="this.onlyNumbers" @change="this.onlyNumbers">
            </div>
            <div class="form-group">
                <button class="btn btn-success btn-sm btn-block">Save</button>
            </div>
        </form>
    </div>
</template>

<script>
    export default {
        name: "AddProductForm",
        data() {
            return {
                product: {
                    id: '',
                    name: '',
                    description: '',
                    inventory: ''
                },
                product_id: '',
                edit: false,
                saveSuccess: false,
                errors: [],
                successText: '',
                id: '',

            }
        },
        created() {
            if (this.$route.params.id) {
                this.id = this.$route.params.id;
                this.editProduct(this.id);
                this.edit = true;
            }
        },
        methods: {
            addProduct() {
                this.errors = [];
                if (this.edit === false) {

                    if (!this.product.name.trim()) {
                        this.errors.push('Name field required.');
                    }
                    if (!this.product.description.trim()) {
                        this.errors.push('Description field required.');
                    }
                    if (!this.product.inventory) {
                        this.errors.push('Inventory field required.');
                    } else if (this.product.inventory == 0) {
                        this.errors.push('Inventory can not be zero.')
                    }

                    if (!this.errors.length) {
                        fetch('api/product', {
                            method: 'post',
                            body: JSON.stringify(this.product),
                            headers: {
                                'content-type': 'application/json'
                            }
                        })
                            .then(res => res.json())
                            .then(data => {
                                if (data == true) {
                                    this.saveSuccess = true;
                                    this.successText = 'Product Added Successfully!';
                                    this.product.name = '';
                                    this.product.description = '';
                                    this.product.inventory = '';
                                }
                            })
                            .catch(err => console.log(err))
                    }

                } else {
                    console.log(this.product);
                    if (this.product.name.trim() == "") {
                        this.errors.push('Name field required.');
                    }
                    if (this.product.description.trim() == "") {
                        this.errors.push('Description field required.');
                    }
                    if (this.product.inventory == "") {
                        this.errors.push('Inventory field required.');
                    } else if (this.product.inventory == 0) {
                        this.errors.push('Inventory can not be zero.')
                    }

                    if (!this.errors.length) {
                        fetch(`api/product/${this.id}`, {
                            method: 'put',
                            body: JSON.stringify(this.product),
                            headers: {
                                'content-type': 'application/json'
                            }
                        })
                            .then(res => res.json())
                            .then(data => {
                                if (data == true) {
                                    this.saveSuccess = true;
                                    this.successText = 'Product Updated Successfully!';
                                    setTimeout(() => this.$router.push({path: '/'}), 3000);
                                }
                            })
                            .catch(err => console.log(err))
                    }
                }
            },
            editProduct(id) {
                fetch(`api/product/edit/${id}`, {
                    method: 'get',
                    headers: {
                        'content-type': 'application/json'
                    }
                })
                    .then(res => res.json())
                    .then(data => {
                        this.edit = true;
                        this.product.id = data.id;
                        this.product.name = data.name;
                        this.product.description = data.description;
                        this.product.inventory = data.inventory;
                        this.product_id = data.id;
                    })
                    .catch(err => console.log(err))

            },
            onlyNumbers(event) {
                let val = event.target.value.trim();
                val = val.replace(/[^\d]/g, '');

                this.product.inventory = val;
            }
        }
    }
</script>

<style scoped>

</style>