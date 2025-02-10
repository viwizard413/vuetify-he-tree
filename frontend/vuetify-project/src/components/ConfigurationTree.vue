<template>
  <BaseTree
    v-model="localTreeData"
    class="mtl-tree"
    tree-line
    @click:node="clickNode"
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
      },
      focus: {
        type: Function,
        required: true
      },
    },
    data() {
      return {
        localTreeData: this.treeData,
      }
    },
    methods: {
      clickNode(node) {
        console.log('clickNode')
        this.focus(node)
      }
    },
  }
</script>
