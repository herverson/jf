<template>
  <div class="">
    <template>

      <section class="main-block light-bg">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-md-5">
              <div class="styled-heading">
                <h3>Categorias</h3>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="card grid" v-for="categorie of categories" :key="categorie.id">
              <img class="card-img-top lista-card minhaimg" v-bind:src="categorie.image_url" alt="">
              <div class="card-body ">
                <h4 class="card-title">{{categorie.title}}</h4>
              </div>
            </div>
          </div>
        </div>
      </section>
    </template>
    <template>
      <!--============================= FEATURED RESTAURANTS =============================-->
      <section class="main-block light-bg">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-md-5">
              <div class="styled-heading">
                <h3>Restaurantes</h3>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 featured-responsive" v-for="restaurant of restaurants" :key="restaurant.id">
              <div class="featured-place-wrap">
                <router-link :to="`/restaurants/${restaurant.id}`">
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
                </router-link>
              </div>
            </div>
          </div>
          <div class="row justify-content-center">
            <div class="col-md-4">
              <div class="featured-btn-wrap">
                <a href="#" class="btn btn-danger">VIEW ALL</a>
              </div>
            </div>
          </div>
        </div>
      </section>
    </template>
  </div>
</template>

<script>
  import Categorie from '../services/categories'
  import Restaurant from '../services/restaurants'
  export default {
    data() {
      return {
        categorie: {
          id: '',
          title: '',
          image_url: ''
        },
        categories: [],

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
          category_title: ''
        },
        restaurants: [],
      }
  },
  mounted() {
    this.listarCatergories()
    this.listarRestaurants()
  },

  methods: {
    listarCatergories() {
      Categorie.listar().then(resposta => {
        this.categories = resposta.data.categories
      })
    },

    listarRestaurants() {
      Restaurant.listar().then(resposta => {
        this.restaurants = resposta.data.restaurants
      })
    }
  }
}
</script>

<style>
  @import url('../css/set1.css');
  @import url('../css/simple-line-icons.css');
  @import url('../css/style.css');
  @import url('../css/themify-icons.css');

  .card {
    text-align: center;
  }
  .minhaimg {

    width: 195px;
    height: 180px;
    border-radius: 50%;
  }
  .lista-card:hover
  {
    border: 1px solid #dbdad9;
  }
  .lista-card {
    cursor: pointer;
  }
</style>