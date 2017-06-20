###
  Backbone-Forms chosen editor 1.0.1

  Copyright (c) 2017 Tomasz Jakub Rup

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
    events:
      'change': (event) ->
        @trigger('change', @)
        return
      'chosen:showing_dropdown': (event) ->
        @trigger('focus', @)
        return
      'chosen:hiding_dropdown': (event) ->
        @trigger('blur', @)
        return

    initialize: (options) ->
      Select::initialize.call @, options

      @editorOptions = options.schema.editorOptions or {}

      el = @$el
      @$el = Backbone.$('<div>')
      @el = @$el[0]
      @$el.html(el)

      return

    render: () ->
      Select::render.call @

      if @editorOptions.width?
        @renderChosen()
      else
        setTimeout @renderChosen.bind(@), 10
      @

    renderChosen: () ->
      @$('select').chosen @editorOptions
      return

    renderOptions: (options) ->
      $select = @$('select')

      html = @_getOptionsHtml(options)

      # Insert options
      $select.html(html)

      # Select correct option
      @setValue(@value)

      return

    getValue: () -> @$('select').val()

    setValue: (value) ->
      @$('select').val(value)
      return

  return
