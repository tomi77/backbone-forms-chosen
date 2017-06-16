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

describe 'A Chosen editor', () ->
  it 'should render a chosen select box', (done) ->
    model = new Model()
    form = new Backbone.Form model: model
    $('body').html(form.render().$el)

    setTimeout () ->
      expect($('.chosen-container').length).to.equal(1)
      done()
    , 200
    return

  return
