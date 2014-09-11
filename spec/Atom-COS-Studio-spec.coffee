{WorkspaceView} = require 'atom'
AtomCOSStudio = require '../lib/Atom-COS-Studio'

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

describe "CacheStudio", ->
  activationPromise = null

  beforeEach ->
    atom.workspaceView = new WorkspaceView
    activationPromise = atom.packages.activatePackage('Atom-COS-Studio')

  describe "when the Atom-COS-Studio:toggle event is triggered", ->
    it "attaches and then detaches the view", ->
      expect(atom.workspaceView.find('.Atom-COS-Studio')).not.toExist()

      # This is an activation event, triggering it will cause the package to be
      # activated.
      atom.workspaceView.trigger 'Atom-COS-Studio:toggle'

      waitsForPromise ->
        activationPromise

      runs ->
        expect(atom.workspaceView.find('.Atom-COS-Studio')).toExist()
        atom.workspaceView.trigger 'Atom-COS-Studio:toggle'
        expect(atom.workspaceView.find('.Atom-COS-Studio')).not.toExist()
