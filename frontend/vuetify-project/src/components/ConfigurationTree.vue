<template>
  <BaseTree
    v-model="localTreeData"
    class="mtl-tree"
    tree-line
  />
</template>

<script>
  import { BaseTree } from '@he-tree/vue'
  import '@he-tree/vue/style/default.css'

  export default {
    components: { BaseTree },
    props: {
      treeData: {
        type: Object,
        required: true
      }
    },
    data() {
      return {
        localTreeData: this.treeData,
      }
    },
  }
</script>
