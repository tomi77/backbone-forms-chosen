
/*
  Backbone-Forms chosen editor 1.0.0

  Copyright (c) 2017 Tomasz Jakub Rup

  https://github.com/tomi77/backbone-forms-chosen

  Released under the MIT license
 */
(function(root, factory) {

  /* istanbul ignore next */
  switch (false) {
    case !(typeof define === 'function' && define.amd):
      define(['backbone-forms', 'chosen'], factory);
      break;
    case typeof exports !== 'object':
      require('chosen-js');
      factory(require('backbone-forms'));
      break;
    default:
      factory(root.Backbone.Form);
  }
})(this, function(Form) {
  var Select;
  Select = Form.editors.Select;
  Form.editors['chosen'] = Select.extend({
    events: {
      'change': function(event) {
        this.trigger('change', this);
      },
      'chosen:showing_dropdown': function(event) {
        this.trigger('focus', this);
      },
      'chosen:hiding_dropdown': function(event) {
        this.trigger('blur', this);
      }
    },
    initialize: function(options) {
      var el;
      Select.prototype.initialize.call(this, options);
      this.editorOptions = options.schema.editorOptions || {};
      el = this.$el;
      this.$el = Backbone.$('<div>');
      this.el = this.$el[0];
      this.$el.html(el);
    },
    render: function() {
      Select.prototype.render.call(this);
      if (this.editorOptions.width != null) {
        this.renderChosen();
      } else {
        setTimeout(this.renderChosen.bind(this), 10);
      }
      return this;
    },
    renderChosen: function() {
      this.$('select').chosen(this.editorOptions);
    },
    renderOptions: function(options) {
      var $select, html;
      $select = this.$('select');
      html = this._getOptionsHtml(options);
      $select.html(html);
      this.setValue(this.value);
    },
    getValue: function() {
      return this.$('select').val();
    },
    setValue: function(value) {
      this.$('select').val(value);
    }
  });
});
