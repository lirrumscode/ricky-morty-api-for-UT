<template>
  <div>
    
    <div class="login-page">
      <div class="form" id="app">
        <h3 class="h20">Ricky and Morty APis with Vue.js</h3>
        <form class="login-form" method="POST" v-on:submit.prevent="login(email,password)">
          <input type="text" v-model="email" id="email" name="email" placeholder="username" required />
          <input
            type="password"
            v-model="password"
            placeholder="password"
            id="password"
            name="password"
          />
          <button class="btn">Login</button>
          <p class="message">
            Not registered?
            <router-link to="/register">Create an account</router-link>
          </p>
        </form>
      </div>
    </div>
    <Footer></Footer>
  </div>
</template>

<script>
import Footer from "@/components/footer.vue";

export default {
  name: "Login",
  components: {
    Footer,
  },
  data() {
    return {
      email: "",
      password: "",
      sms: "",
    };
  },
  methods: {
    /* Validation login from localstorage */
    login: function (email, password) {
      if (email == "") {
        alert("please fill the fields");
      } else if (password == "") {
        alert("please fill the fields");
      } else {
        if (
          email == localStorage.getItem("email") &&
          password == localStorage.getItem("password")
        ) {
          alert("welcome!, " + email);
          this.$router.push("/dashboard");
        } else {
          alert("User not registered D:");
          this.$router.push("/");
        }
      }
    },
  },
};
</script>

<style scoped lang="scss">
@import "../assets/index.css";
</style>
