fs   = require 'fs'
path = require 'path'

# See docs at http://brunch.readthedocs.org/en/latest/config.html.

exports.config =

  files:

    javascripts:
      defaultExtension: 'js',
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor\/(?!node)/

      order:
        before: [
          'vendor/scripts/console-helper.js',
          'vendor/scripts/jquery-latest.js',
          'vendor/scripts/handlebars-latest.js',
          'vendor/scripts/ember-latest.js',
          'vendor/scripts/bootstrap.js',
          ]

    stylesheets:
      defaultExtension: 'css'
      joinTo: 'stylesheets/app.css'
      order:
        before: ['vendor/styles/bootstrap.css']

    templates:
      precompile: true
      root: 'templates'
      defaultExtension: 'hbs'
      joinTo: 'javascripts/app.js' : /^app/
      paths:
      	jquery: 'vendor/scripts/jquery-latest.js'
      	handlebars: 'vendor/scripts/handlebars-latest.js'
      	ember: 'vendor/scripts/ember-latest.js'

  #server:
    #path: 'server.js'
    #port: process.env.PORT || 3333
    #base: '/'

  plugins:
    jshint:
      pattern: /^app\/.*\.js$/
