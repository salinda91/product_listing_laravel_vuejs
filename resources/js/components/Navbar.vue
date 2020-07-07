<template>
    <div>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container">
                <router-link class="navbar-brand" to="/">Products</router-link>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                    <router-link to="/" class="btn btn-link btn-sm ml-3 text-white">All Products</router-link>
                    <router-link to="/add-product" class="btn btn-link btn-sm ml-3 text-white">Add Product</router-link>
                </div>
            </div>
        </nav>
    </div>
</template>

<script>
    export default {
        name: "navbar"
    }
</script>

<style scoped>

</style>