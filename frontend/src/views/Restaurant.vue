<template>
  <div>
    <h1>teste resta</h1>
    <div class="row">
      <div class="col-md-4 featured-responsive">
        <div class="featured-place-wrap">
          <a href="">
            <img v-bind:src="restaurant.image_url" class="img-fluid" alt="#">
            <span class="featured-rating-orange">6.5</span>
            <div class="featured-title-box">
              <h6>{{restaurant.name}}</h6>
              <p>Restaurante </p> <span>• </span>
              <p>{{restaurant.review}} Reviews</p> <span> • </span>
              <p><span>$$$</span>$$</p>
              <ul>
                <li><span class="icon-location-pin"></span>
                  <p>{{restaurant.neighborhood}}, {{restaurant.city}}, {{restaurant.state}} {{restaurant.number}}</p>
                </li>
                <li><span class="icon-link"></span>
                  <p>https://burgerandlobster.com</p>
                </li>

              </ul>
              <div class="bottom-icons">
                <div class="open-now" v-if="restaurant.status==='open'">Restaurante Aberto</div>
                <span class="ti-heart"></span>
                <span class="ti-bookmark"></span>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
<!--    {{ $route.params.id }}-->

    <div v-for="product_categorie in restaurant.product_categories" :key="product_categorie.id">
<!--      {{product_categorie.id}}-->
      {{product_categorie.title}}
<!--        <div v-for="products in product_categorie.products" :key="products.id">-->
<!--          {{products.description}}-->
<!--          {{products.image_url}}-->
<!--        </div>-->
      <b-table striped hover :items="product_categorie.products" :fields="products"></b-table>


    </div>

  </div>
</template>

<script>
  import Restaurant from '../services/restaurants'
export default {
    data() {
      return {
        restaurant: {
          id: '',
          name: '',
          description: '',
          review: '',
          status: '',
          delivery_tax: '',
          state: '',
          city: '',
          street: '',
          neighborhood: '',
          number: '',
          complement: '',
          reference: '',
          cep: '',
          image_url: '',
          category_title: '',
          product_categories: []
        },
        product_categorie: {
          id: '',
          title: '',
          products:[]
        },
        products: [
          'name',
          'description',
          'price',
          'image_url'
        ]
      }
    },
  mounted() {
    this.listarRestaurant(this.$route.params.id)
  },

  methods: {
    listarRestaurant(id) {
      Restaurant.listarById(id).then(resposta => {
        this.restaurant = resposta.data.restaurant
      })
    }
  }
}
</script>

<style scoped>

</style>
