# Backbone-Forms Chosen editor

[![Code Climate](https://codeclimate.com/github/tomi77/backbone-forms-chosen/badges/gpa.svg)](https://codeclimate.com/github/tomi77/backbone-forms-chosen)
[![Build Status](https://travis-ci.org/tomi77/backbone-forms-chosen.svg?branch=master)](https://travis-ci.org/tomi77/backbone-forms-chosen)
[![Coverage Status](https://coveralls.io/repos/github/tomi77/backbone-forms-chosen/badge.svg?branch=master)](https://coveralls.io/github/tomi77/backbone-forms-chosen?branch=master)
[![Dependency Status](https://david-dm.org/tomi77/backbone-forms-chosen.png)](https://david-dm.org/tomi77/backbone-forms-chosen)
[![devDependencies Status](https://david-dm.org/tomi77/backbone-forms-chosen/dev-status.svg)](https://david-dm.org/tomi77/backbone-forms-chosen?type=dev)
![Downloads](https://img.shields.io/npm/dt/backbone-forms-chosen.svg)


A [Backbone-Forms](https://github.com/powmedia/backbone-forms) editor that covers [Chosen](https://harvesthq.github.io/chosen/) functionality.

## Installation

Via ``bower``:

~~~bash
bower install backbone-forms-chosen
~~~

Via ``npm``:

~~~bash
npm install backbone-forms-chosen
~~~

## Usage

~~~js
var states = ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California',
    'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii',
    'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana',
    'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota',
    'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire',
    'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota',
    'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island',
    'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont',
    'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming'
];
var Model = Backbone.Model.extend({
    schema: {
        states: {
            type: 'chosen',
            title: 'States',
            options: states,
            editorAttrs: {
                multiple: 'multiple',
                'data-placeholder': 'Select countries...'
            },
            editorOptions: {
            }
        }
    }
});
var model = new Model();
var form = new Backbone.Form({
    model: model
});
$('#form').html(form.render().$el);
~~~

## Demo

https://tomi77.github.io/backbone-forms-chosen/
