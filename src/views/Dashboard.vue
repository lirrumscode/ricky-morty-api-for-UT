<template>
  <div class="home">
    <homedashboard />
  </div>
</template>

<script>
// @ is an alias to /src
import homedashboard from '@/components/dashboard.vue'

export default {
  name: 'Dashboard',
  components: {
    homedashboard
  }
}
</script>
