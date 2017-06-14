
/*
  Backbone-Forms chosen editor 1.0.0

  Copyright (c) 2016 Tomasz Jakub Rup

  https://github.com/tomi77/backbone-forms-chosen

  Released under the MIT license
 */
(function(root, factory) {
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
    initialize: function(options) {
      Select.prototype.initialize.call(this, options);
      this.editorOptions = options.schema.editorOptions || {};
    },
    render: function() {
      var f;
      Select.prototype.render.call(this);
      f = (function(_this) {
        return function() {
          _this.$el.chosen(_this.editorOptions);
        };
      })(this);
      _.delay(f, this.schema.delay || 100);
      return this;
    }
  });
});
