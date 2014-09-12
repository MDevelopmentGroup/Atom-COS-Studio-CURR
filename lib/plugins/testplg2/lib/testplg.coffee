module.exports =
class testplg
  constructor: (ev={}) ->
    console.log "Second plugin loaded"
    
  initialize: () ->
    console.log "first start"
