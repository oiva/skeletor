define [
  "marionette"
  "text!app/module/templates/exampleOtherTemplate.html"
], (marionette, Template) ->
  marionette.ItemView.extend
    template: _.template(Template)

    initialize: ->
      console.log 'init exampleOtherView'