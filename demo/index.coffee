demo = () ->
  states = ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California',
    'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii',
    'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana',
    'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota',
    'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire',
    'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota',
    'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island',
    'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont',
    'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming'
  ]

  Model = Backbone.Model.extend
    schema:
      states:
        type: 'chosen'
        title: 'States'
        options: states
        editorAttrs:
          multiple: 'multiple'
          'data-placeholder': 'Select countries...'
        editorOptions:
          width: '100%'

  model = new Model({states: ['Alabama']})
  form = new Backbone.Form model: model
  $('#form').html(form.render().$el)
  form.on 'focus', () ->
    $('.focus').removeClass('hidden')
    $('.blur').addClass('hidden')
    return
  .on 'blur', () ->
    $('.blur').removeClass('hidden')
    $('.focus').addClass('hidden')
    return
  .on 'change', (form) ->
    states = form.getValue('states').map (state) -> "<span class=\"label label-primary\">#{state}</span>"
    $('.change').html(states.join('&nbsp;'))
    return
  return

document.addEventListener("DOMContentLoaded", demo, false)
window.addEventListener("load", demo, false)
