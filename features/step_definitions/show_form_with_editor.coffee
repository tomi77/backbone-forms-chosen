seleniumWebdriver = require 'selenium-webdriver'
{defineSupportCode} = require 'cucumber'

Until = seleniumWebdriver.until

defineSupportCode ({Given, When, Then}) ->
  Then 'I should see chosen editor', () ->
    condition = Until.elementLocated css: '.chosen-container'
    @driver.wait(condition)
