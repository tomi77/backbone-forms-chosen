###
  Backbone-Forms chosen editor 1.0.0

  Copyright (c) 2016 Tomasz Jakub Rup

  https://github.com/tomi77/backbone-forms-chosen

  Released under the MIT license
###

((root, factory) ->
  ### istanbul ignore next ###
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

      el = @$el
      @$el = Backbone.$('<div>')
      @el = @$el[0]
      @$el.html(el)

      @editorOptions.width ?= el.css('width')

      return

    render: () ->
      Select::render.call @

      @$('select').chosen @editorOptions
      @

    renderOptions: (options) ->
      $select = @$('select')

      html = @_getOptionsHtml(options)

      # Insert options
      $select.html(html)

      # Select correct option
      @setValue(@value)

      return

  return
