class BackboneRails.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  initialize: ->
    @collection = new BackboneRails.Collections.Entries()
    @collection.fetch(reset: true)

  index: ->
    view = new BackboneRails.Views.EntriesIndex(collection: @collection)
    $("#container").html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"
