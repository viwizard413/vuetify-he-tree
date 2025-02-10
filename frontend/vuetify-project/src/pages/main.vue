<template>
  <v-container>
    <v-responseve>
      <v-toolbar elevation="2">
        <v-toolbar-title>
          Configuration File
          <span v-if="configurationTree.enable">
            <v-btn
              prepend-icon="mdi-chevron-left"
              @click="configurationTree.enable = !configurationTree.enable"
            >
              close tree
            </v-btn>
          </span>
          <span v-else>
            <v-btn
              prepend-icon="mdi-chevron-right"
              @click="configurationTree.enable = !configurationTree.enable"
            >
              open tree
            </v-btn>
          </span>
        </v-toolbar-title>
      </v-toolbar>
      <v-row class="ma-0">
        <v-col
          v-if="configurationTree.enable"
          :cols="configurationTree.enable? 3 : 0"
        >
          <v-card>
            <ConfigurationTree
              :tree-data="treeData"
              :focus="focus"
              sclass="ma-2"
            />
          </v-card>
        </v-col>
        <v-col :cols="configurationTree.enable? 9 : 12">
          <v-card>
            <v-form>
              <v-text-field
                ref="Projects"
                label="Projects"
                variant="outlined"
                class="ma-2"
              />
              <v-text-field
                ref="Projects-Frontend"
                label="Projects/Frontend"
                variant="outlined"
                class="ma-2"
              />
            </v-form>
          </v-card>
        </v-col>
      </v-row>
    </v-responseve>
  </v-container>
</template>

<script>
  export default {
    data() {
      return {
        configurationTree: {
          enable: true,
        },
        treeData: [
          {
            text: 'Projects',
            ref: 'Projects',
            children: [
              {
                text: 'Frontend',
                ref: 'Projects-Frontend',
                children: [
                  {
                    text: 'Vue',
                    children: [
                      {
                        text: 'Nuxt',
                      },
                    ],
                  },
                  {
                    text: 'React',
                    children: [
                      {
                        text: 'Next',
                      },
                    ],
                  },
                  {
                    text: 'Angular',
                  },
                ],
              },
              {
                text: 'Backend',
              },
            ],
          },
          { text: 'Photos' },
          { text: 'Videos' },
        ],
      }
    },
    methods: {
      focus(node) {
        console.log(node)
        this.$refs[node.data.ref].focus()
      }
    },
  }
</script>
