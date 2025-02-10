<template>
  <v-container>
    <v-responseve>
      <v-toolbar elevation="2">
        <v-toolbar-title>
          Configuration File
          <span v-if="configurationTree.enable">
            <v-btn
              @click="configurationTree.enable = !configurationTree.enable"
              prepend-icon="mdi-chevron-left"
            >
              close tree
            </v-btn>
          </span >
          <span v-else>
            <v-btn
              @click="configurationTree.enable = !configurationTree.enable"
              prepend-icon="mdi-chevron-right"
            >
              open tree
            </v-btn>
          </span >
        </v-toolbar-title>
      </v-toolbar>
      <v-row class="ma-0">
        <v-col
          v-if="configurationTree.enable"
          :cols="configurationTree.enable? 3 : 0"
        >
          <v-card>
            <ConfigurationTree :treeData="treeData" class="ma-2"/>
          </v-card>
        </v-col>
        <v-col :cols="configurationTree.enable? 9 : 12">
          <v-card>
            main
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
            children: [
              {
                text: 'Frontend',
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
  }
</script>
