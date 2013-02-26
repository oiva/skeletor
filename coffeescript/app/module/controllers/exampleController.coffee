define [
  'app/module/views/exampleView'
  'app/module/views/exampleOtherView'
  'app/module/views/multiView'
  'app/module/models/exampleModel'
], (ExampleView, ExampleOtherView, MultiView, ExampleModel) ->
  
  views: {}

  index: ->
    console.log 'controller: index'

    if !@views.exampleView?
      viewOptions =
        model : new ExampleModel(name: "Test name")
      @views.exampleView = new ExampleView(viewOptions)

    app.content.show(@views.exampleView)

  other: ->
    console.log 'controller: other'

    if !@views.exampleOtherView?
      @views.exampleOtherView = new ExampleOtherView()

    app.content.show(@views.exampleOtherView)

  multi: ->
    console.log 'controller: multi'

    if !@views.multiView?
      @views.multiView = new MultiView()

    app.content.show(@views.multiView)