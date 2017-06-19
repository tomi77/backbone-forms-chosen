seleniumWebdriver = require 'selenium-webdriver'
{defineSupportCode} = require 'cucumber'

Until = seleniumWebdriver.until

defineSupportCode ({Given}) ->
  Given 'Show form', () ->
    @driver.get 'https://tomi77.github.io/backbone-forms-chosen/'
    @driver.findElement css: '.container'
    .then Until.elementIsVisible.bind(Until)
    .then @driver.wait.bind(@driver)
