<template>
  <div>
    <nav class="menu" tabindex="0">
      <div class="smartphone-menu-trigger"></div>
      <header class="avatar">
        <img
          src="https://www.tonica.la/__export/1589835960411/sites/debate/img/2020/05/18/rick-and-morty-portada.jpg_423682103.jpg"
        />
        <h2>{{ email }}</h2>
      </header>
      <ul>
        <li tabindex="0" class="icon-dashboard">
          <span>{{ email }}</span>
        </li>
        <li tabindex="0" class="icon-settings">
          <span>
            <router-link to="/">
              <a>Logout</a>
            </router-link>
          </span>
        </li>
      </ul>
    </nav>
    <main>
      <div class="container" id="contenedor">
        <h2>Ricky and Morty APis</h2>
        <div class="row">
          <div class="col-sm-12 col-lg-6 col-md-6" v-for="data in info" :key="data.id">
            <div class="wrapper">
              <div class="clash-card goblin">
                <div class="clash-card__image clash-card__image--goblin">
                  <img :src="data.image" />
                </div>
                <div class="clash-card__level clash-card__level--goblin"></div>
                <div class="clash-card__unit-name"></div>
                <div class="clash-card__unit-description"></div>

                <div class="clash-card__unit-stats clash-card__unit-stats--goblin clearfix">
                  <div class="one-third">
                    <div class="stat">{{ data.name }}</div>
                    <div class="stat-value">{{ data.species }}</div>
                    <div class="stat">{{ data.status }}</div>
                    <div class="stat-value">{{ data.location.name }}</div>
                  </div>

                  <div class="one-third">
                    <div class="stat-value">{{ data.gender }}</div>
                    <div class="stat">{{ data.origin.name }}</div>
                    <div class="stat-value">{{ data.created }}</div>
                  </div>
                </div>
              </div>
              <!-- end clash-card goblin-->
            </div>
          </div>
        </div>
      </div>

      <!-- end container -->
    </main>
    <Footer></Footer>
  </div>
</template>
<script>
import axios from "axios";
import Footer from "@/components/footer.vue";

export default {
  name: "homedashboard",
  components: {
    Footer,
  },
  data() {
    return {
      email: localStorage.getItem("email"),
      info: null,
    };
  },
  mounted() {
    this.getUser();
  },
  methods: {
    async getUser() {
      axios
        .get("https://rickandmortyapi.com/api/character")
        .then((response) => {
          console.log(response.data.results);
          this.info = response.data.results;
        })
        .catch((e) => console.log(e));
    },
    logout() {
      this.$router.push({ path: "/" });
    },
  },
};
</script>
<style scoped lang="scss">
@import "../assets/main.css";
@import "../assets/card.css";
</style>
