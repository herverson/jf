<template>
  <div class="container">
      <div class="card-deck">
          <div class="card" v-for="categorie of categories" :key="categorie.id">
              <img class="card-img-top" v-bind:src="categorie.image_url" alt="">
              <div class="card-body">
                  <h4 class="card-title">{{categorie.titulo}}</h4>
              </div>
          </div>
      </div>
      <div class="row">
          <!-- Team member -->
          <div class="col-xs-12 col-sm-6 col-md-6" v-for="restaurant of restaurants" :key="restaurant.id">
              <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                  <div class="mainflip">
                      <div class="frontside">
                          <div class="card">
                              <div class="card-body text-center">
                                  <p><img class="img-fluid" v-bind:src="restaurant.image_url" alt=""></p>
                                  <h4 class="card-title">{{restaurant.nome}}</h4>
                                  <p class="card-text">{{restaurant.descricao}}</p>
                                  <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                              </div>
                          </div>
                      </div>

                  </div>
              </div>
          </div>
      </div>
  </div>
</template>

<script>
import Categorie from './services/categories'
import Restaurant from './services/restaurants'
export default {
  data() {
    return {
      categorie: {
          id: '',
          titulo: '',
          image_url: ''
      },
      categories: [],

      restaurant: {
          id: '',
          nome: '',
          descricao: '',
          review: '',
          status: '',
          delivery_tax: '',
          estado: '',
          cidade: '',
          rua: '',
          bairro: '',
          numero: '',
          complemento: '',
          referencia: '',
          cep: '',
          image_url: ''
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
    body{
        background: #eee;
    }
    span{
        font-size:15px;
    }
    a{
        text-decoration:none;
        color: #0062cc;
        border-bottom:2px solid #0062cc;
    }
    /*.box{*/
    /*    padding:60px 0px;*/
    /*}*/

    .box-part{
        background:#FFF;
        border-radius:0;
        padding:60px 10px;
        margin:30px 0px;
    }
    .text{
        margin:20px 0px;
    }

    img{
        color:#4183D7;
    }

    /* FontAwesome for working BootSnippet :> */

    @import url('https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    #team {
        background: #eee !important;
    }

    .btn-primary:hover,
    .btn-primary:focus {
        background-color: #108d6f;
        border-color: #108d6f;
        box-shadow: none;
        outline: none;
    }

    .btn-primary {
        color: #fff;
        background-color: #007b5e;
        border-color: #007b5e;
    }

    section {
        padding: 60px 0;
    }

    section .section-title {
        text-align: center;
        color: #007b5e;
        margin-bottom: 50px;
        text-transform: uppercase;
    }

    #team .card {
        border: none;
        background: #ffffff;
    }

    .image-flip:hover .backside,
    .image-flip.hover .backside {
        /*-webkit-transform: rotateY(0deg);*/
        /*-moz-transform: rotateY(0deg);*/
        /*-o-transform: rotateY(0deg);*/
        /*-ms-transform: rotateY(0deg);*/
        transform: rotateY(0deg);
        border-radius: .25rem;
    }

    .image-flip:hover .frontside,
    .image-flip.hover .frontside {
        /*-webkit-transform: rotateY(180deg);*/
        /*-moz-transform: rotateY(180deg);*/
        /*-o-transform: rotateY(180deg);*/
        /*transform: rotateY(180deg);*/
    }

    .mainflip {
        -webkit-transition: 1s;
        -webkit-transform-style: preserve-3d;
        -ms-transition: 1s;
        -moz-transition: 1s;
        -moz-transform: perspective(1000px);
        -moz-transform-style: preserve-3d;
        -ms-transform-style: preserve-3d;
        transition: 1s;
        transform-style: preserve-3d;
        position: relative;
    }

    .frontside {
        position: relative;
        /*-webkit-transform: rotateY(0deg);*/
        /*-ms-transform: rotateY(0deg);*/
        z-index: 2;
        margin-bottom: 30px;
    }

    /*.backside {*/
    /*    position: absolute;*/
    /*    top: 0;*/
    /*    left: 0;*/
    /*    background: white;*/
    /*    -webkit-transform: rotateY(-180deg);*/
    /*    -moz-transform: rotateY(-180deg);*/
    /*    -o-transform: rotateY(-180deg);*/
    /*    -ms-transform: rotateY(-180deg);*/
    /*    transform: rotateY(-180deg);*/
    /*    -webkit-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);*/
    /*    -moz-box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);*/
    /*    box-shadow: 5px 7px 9px -4px rgb(158, 158, 158);*/
    /*}*/

    /*.frontside,*/
    /*.backside {*/
    /*    -webkit-backface-visibility: hidden;*/
    /*    -moz-backface-visibility: hidden;*/
    /*    -ms-backface-visibility: hidden;*/
    /*    backface-visibility: hidden;*/
    /*    -webkit-transition: 1s;*/
    /*    -webkit-transform-style: preserve-3d;*/
    /*    -moz-transition: 1s;*/
    /*    -moz-transform-style: preserve-3d;*/
    /*    -o-transition: 1s;*/
    /*    -o-transform-style: preserve-3d;*/
    /*    -ms-transition: 1s;*/
    /*    -ms-transform-style: preserve-3d;*/
    /*    transition: 1s;*/
    /*    transform-style: preserve-3d;*/
    /*}*/

    .frontside .card,
    .backside .card {
        border: none;
        min-height: 312px;
    }

    .backside .card a {
        font-size: 18px;
        color: #007b5e !important;
    }

    .frontside .card .card-title,
    .backside .card .card-title {
        color: #007b5e !important;
    }
    .frontside .card .card-body img {
        width: 350px;
        height: 350px;
        border-radius: 50%;
    }
</style>
