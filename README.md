# Backbone-Forms Chosen editor

[![Code Climate](https://codeclimate.com/github/tomi77/backbone-forms-chosen/badges/gpa.svg)](https://codeclimate.com/github/tomi77/backbone-forms-chosen)
[![Build Status](https://travis-ci.org/tomi77/backbone-forms-chosen.svg?branch=master)](https://travis-ci.org/tomi77/backbone-forms-chosen)
[![Coverage Status](https://coveralls.io/repos/github/tomi77/backbone-forms-chosen/badge.svg?branch=master)](https://coveralls.io/github/tomi77/backbone-forms-chosen?branch=master)
[![Dependency Status](https://david-dm.org/tomi77/backbone-forms-chosen.png)](https://david-dm.org/tomi77/backbone-forms-chosen)
[![devDependencies Status](https://david-dm.org/tomi77/backbone-forms-chosen/dev-status.svg)](https://david-dm.org/tomi77/backbone-forms-chosen?type=dev)
[![peerDependencies Status](https://david-dm.org/tomi77/backbone-forms-chosen/peer-status.svg)](https://david-dm.org/tomi77/backbone-forms-chosen?type=peer)
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

Just replace ``Select`` editor type with ``chosen``.

### Change placeholder

Add ``data-placeholder`` to ``editorAttrs``.

~~~js
schema: {
  states: {
    type: 'chosen',
    title: 'States',
    options: states,
    editorAttrs: {
      multiple: 'multiple',
      'data-placeholder': 'Select countries...'
    }
  }
}
~~~

### Add extra chosen editor options

Add ``editorOptions`` to schema.

~~~js
schema: {
  states: {
    type: 'chosen',
    title: 'States',
    options: states,
    editorOptions: {
      no_results_text: 'Oops, nothing found!'
    }
  }
}
~~~

## Demo

https://tomi77.github.io/backbone-forms-chosen/
