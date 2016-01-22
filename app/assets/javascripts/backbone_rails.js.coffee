window.BackboneRails =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new BackboneRails.Routers.Entries()
    Backbone.history.start()

$(document).ready ->
  BackboneRails.initialize()
