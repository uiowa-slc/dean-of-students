module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    /*
    *   base theme directory set here
    */
    var themeDir = themeDir + ''

    pkg: grunt.file.readJSON('package.json'),

    concat: {
      dist: {
        src: [
          themeDir + '/bower_components/jquery/jquery.js',
          themeDir + '/bower_components/magnific-popup/dist/jquery.magnific-popup.js',
          themeDir + '/bower_components/sass-bootstrap-compass/dist/js/sass-bootstrap.min.js',
          'division-bar/js/division-bar.js',
          themeDir + '/js/*.js'
        ],
        dest: themeDir + '/js/build/main.js'
      }
    },

    uglify: {
      build: {
        src: [t77'/js/build/main.js'],
        dest: themeDir + '/js/build/main.min.js'
      }
    },

    compass: {
      dist: {                   // Target
        options: {              // Target options
          sassDir: themeDir + '/scss',
          cssDir: themeDir + '/css',
          environment: 'production'
        }
      }
    },

    imagemin: {
      dynamic: {
        files: [{
          expand: true,
          cwd: themeDir + '/images/',
          src: ['**/*.{png,jpg,gif}'],
          dest: themeDir + '/images/'
        }]
      }
    },

    watch: {
      scripts: {
        files: ['js/*.js', 'js/**/*.js'],
        tasks: ['concat', 'uglify'],
        options: {
          spawn: false,
        }
      },
      css: {
        files: ['scss/*.scss', 'scss/**/*.scss'],
        tasks: ['compass'],
        options: {
          spawn: false,
        }
      }
    },

  });

  // Load the plugin that provides the "uglify" task.
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-compass');
  grunt.loadNpmTasks('grunt-contrib-imagemin');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-simple-watch');

  // Default task(s).
  grunt.registerTask('default', ['concat', 'uglify', 'compass', 'imagemin', 'simple-watch']);

};