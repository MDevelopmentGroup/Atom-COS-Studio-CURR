#{View, Editor, $} = require 'atom'
module.exports =
class testplg #extends View
  #@content: ->
    #@div ''
  constructor: (ev={}) ->
    console.log "First plugin loaded"
    ev.add("<button class='inline-block btn'><li class='fa fa-file-o fa-lg'></li></button>")
