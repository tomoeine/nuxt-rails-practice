<template>
  <div>
    <h2>著者一覧</h2>
    <ul v-for="author in authors" :key="author.id">
      <li>{{ author.name }}</li>
    </ul>
  </div>
</template>

<script>
export default {
  layout: "defualt",
  data() {
    return {
      authors: [],
    };
  },
  async created() {
    try {
      const { data } = await this.$axios.get("/authors");
      this.authors = data;
    } catch (e) {
      console.error(e);
    }
  },
};
</script>
