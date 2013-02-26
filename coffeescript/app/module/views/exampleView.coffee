define [
  "marionette" 
  "text!app/module/templates/exampleTemplate.html"
], (marionette, Template) ->
  marionette.ItemView.extend
    template: _.template(Template)

    initialize: ->
      console.log "init example view"