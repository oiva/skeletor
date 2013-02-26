define [
  "marionette"
  "text!app/module/templates/subView.html"
], (marionette, Template) ->
  marionette.ItemView.extend
    template: _.template(Template)

    serializeData: ->
      data = 
        name: @options.name
      return data