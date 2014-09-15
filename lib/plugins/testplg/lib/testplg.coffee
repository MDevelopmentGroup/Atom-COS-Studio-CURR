#{View, Editor, $} = require 'atom'
module.exports =
class testplg #extends View
  #@content: ->
    #@div ''
  constructor: (ev={},temp={}) ->
    atom.workspaceView.command "Atom-COS-Studio:plugins-loaded-state", => @bind(temp)

    console.log "First plugin loaded"
    ev.add("<button class='inline-block btn'><li class='fa fa-file-o fa-lg'></li></button>")
  bind: (temp) ->
    temp.testplg2.test()
