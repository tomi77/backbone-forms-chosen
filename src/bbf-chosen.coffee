###
  Backbone-Forms chosen editor 1.0.0

  Copyright (c) 2016 Tomasz Jakub Rup

  https://github.com/tomi77/backbone-forms-chosen

  Released under the MIT license
###

((root, factory) ->
  switch
    when typeof define is 'function' and define.amd
      define ['backbone-forms', 'chosen'], factory
    when typeof exports is 'object'
      require('chosen-js')
      factory require('backbone-forms')
    else
      factory root.Backbone.Form
  return
) @, (Form) ->
  Select = Form.editors.Select

  Form.editors['chosen'] = Select.extend
    initialize: (options) ->
      Select::initialize.call @, options

      @editorOptions = options.schema.editorOptions or {}
      return

    render: () ->
      Select::render.call @

      f = () =>
        @$el.chosen @editorOptions
        return
      _.delay f, @schema.delay or 100
      @

  return
