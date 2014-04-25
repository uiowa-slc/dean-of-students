module.exports = function(grunt) {
  //base theme directory set here
  var themeDir =  'themes/dos'
  // Project configuration.
  grunt.initConfig({
    
    pkg: grunt.file.readJSON('package.json'),
    
    //compile the sass

    compass: {
      dist: {                   // Target
        options: {              // Target options
          sassDir: [themeDir + '/scss', 'division-project/scss'],
          cssDir: themeDir + '/css',
          environment: 'production'
        }
      }
    },

    //concat all the files into the build folder

    concat: {
      css: {
        src: [themeDir + '/css/*.css', 'division-project/css/*.css'],
        dest: themeDir + '/build/css/master.css'
      },
      js:{
        src: [themeDir + '/js/*.js', 'division-project/js/*.js'],
        dest: themeDir + '/build/src/main_concat.js'
      }
    },

    //minify those concated files
    //toggle mangle to leave variable names intact

    uglify: {
      options: {
        mangle: true
      },
      my_target:{
        files:{
        'themes/dos/build/js/main.min.js': ['themes/dos/build/src/main_concat.js'],
        //'themes/dos/build/css/main.min.css': ['themes/dos/build/src/main_concat.css'] 
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
  // Note: order of tasks is very important
  grunt.registerTask('default', ['compass', 'concat', 'uglify', 'imagemin', 'simple-watch']);

};