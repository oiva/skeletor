define [
  "marionette"
  "app/module/views/subView"
  "text!app/module/templates/multiView.html"
], (marionette, SubView, Template) ->
  marionette.Layout.extend
    template: _.template(Template)
    views: {}

    regions:
      one: '#sub-view-one'
      two: '#sub-view-two'

    initialize: ->
      @views.one = new SubView({name: "First sub view"})
      @views.two = new SubView({name: "Second sub view"})
      @render()

      # nb: regions are not available until initialize has returned. 
      setTimeout =>
        @show()
      , 0

    show: ->
      console.log 'show multi'
      @one.show(@views.one)
      @two.show(@views.two)