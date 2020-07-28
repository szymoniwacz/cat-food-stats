<template>
  <div id="app">
    <v-app>
      <p>{{ message }}</p>
      <catFood/>
    </v-app>
  </div>
</template>

<script>
import catFood from "./packs/components/cat-food.vue";
export default {
  data: function() {
    return {
      message: "Cat foods"
    };
  },
  components: {
    catFood: catFood
  }
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
