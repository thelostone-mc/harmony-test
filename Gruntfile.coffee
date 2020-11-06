module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    watch:
      coffee:
        files: ['public/javascripts/*.coffee', 'controllers/*.coffee']
        tasks: ['coffee']
      compass:
        files: ['public/sass/*.sass']
        tasks: ['compass']
    # jasmine:
    compass:
      dev:
        options:
          sassDir: 'public/sass'
          cssDir: 'public/stylesheets'
    coffee:
      f2eScripts:
        files:
          'public/javascripts/main.js': 'public/javascripts/main.coffee'
          'public/javascripts/spa.js': 'public/javascripts/spa.coffee'
      controllers:
        files:
          'controllers/bills.js': 'controllers/bills.coffee'
          'controllers/auth.js': 'controllers/auth.coffee'
          'controllers/employee.js': 'controllers/employee.coffee'

  # Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-jshint')
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-compass')
  grunt.loadNpmTasks('grunt-contrib-jasmine')
  grunt.loadNpmTasks('grunt-contrib-watch')

  # Default task(s).
  grunt.registerTask('default', ['compass', 'coffee', 'watch'])
