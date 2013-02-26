require.config(
  waitSeconds: 15
  paths:
    backbone: 'ext/backbone-min'
    bootstrap: 'ext/bootstrap-2.0.2.amd'
    jquery: 'ext/jquery-1.9.1.min'
    underscore: 'ext/underscore-min'
    domReady:'domReady'
    text: 'text'

    'marionette': 'ext/plugins/backbone.marionette.min'
    'backbone.babysitter': 'ext/plugins/backbone.babysitter.min'
    'backbone.wreqr': 'ext/plugins/backbone.wreqr.min'

  shim:
    backbone:
      deps: ['underscore', 'jquery']
      exports: 'Backbone'

    underscore:
      exports: '_'

    marionette:
      exports: 'Backbone.Marionette'
      deps: ['backbone']
)

define [
  'main-app'
  'app/module/controllers/exampleController'
  'app/module/router'
  'backbone'
], (app, ExampleController, Router) ->
  console.log "Init base configs"
  window.app = app
  window.app.start()
  
  new Router
    controller: ExampleController

  if Backbone.history?
      Backbone.history.start(push_state: true)