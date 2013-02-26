define [
  'marionette'
], (marionette, ExampleView, ExampleOtherView, ExampleModel) ->
  app = new marionette.Application()

  app.addInitializer ->
    console.log 'app initializer'

    

  app.addRegions
    content: '#content'

  return app