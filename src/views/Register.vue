<template>
  <div>
    <div class="login-page">
      <div class="form" id="app">
        <h3 class="h20">Ricky and Morty APis with Vue.js</h3>
        <form class="login-form" method="POST" v-on:submit.prevent="signin(email,password)">
          <input type="text" v-model="email" id="email" name="email" placeholder="username" required />
          <input
            type="password"
            v-model="password"
            placeholder="password"
            id="password"
            name="password"
          />
          <button class="btn">Register</button>
        </form>
      </div>
    </div>
    <Footer></Footer>
  </div>
</template>

<script>
import Footer from "@/components/footer.vue";

export default {
  name: "Register",
  components: {
    Footer,
  },
  data: function () {
    return {
      email: "",
      password: "",
    };
  },
  methods: {
    signin: function (email, password) {
      if (email == "") {
        alert("please fill the fields");
      } else if (password == "") {
        alert("please fill the fields");
      } else {
        localStorage.setItem("email", email);
        localStorage.setItem("password", password);
        alert("you just registered successfully welcome!");
        this.$router.push("/");
      }
    },
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
@import "../assets/index.css";
</style>
