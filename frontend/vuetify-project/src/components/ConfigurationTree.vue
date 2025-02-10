<template>
  <BaseTree
    v-model="localTreeData"
    class="mtl-tree"
    tree-line
    @click:node="clickNode"
  >
    <template #default="{ node, stat }">
      <OpenIcon
        v-if="stat.children.length"
        :open="stat.open"
        class="mtl-mr"
        @click="stat.open = !stat.open"
      />
      <span class="mtl-ml">{{ node.text }}</span>
    </template>
  </BaseTree>
</template>

<script>
  import { BaseTree, OpenIcon } from '@he-tree/vue'
  import '@he-tree/vue/style/default.css'

  export default {
    components: { BaseTree, OpenIcon },
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
