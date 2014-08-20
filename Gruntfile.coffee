module.exports = (grunt) ->
  require("load-grunt-config") grunt,
    jitGrunt:
      customTasksDir: 'tasks'
  grunt.initConfig {}
  grunt.registerTask "default", ['connect', 'watch']
