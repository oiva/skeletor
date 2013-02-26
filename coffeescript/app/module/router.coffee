define [
  'marionette'
], (marionette) ->
  marionette.AppRouter.extend
    
    appRoutes:
      "": "index",
      "other": "other"
      "multi": "multi"
      #"handlebars": "handlebars"

    initialize: ->
      console.log "An example router initialized"