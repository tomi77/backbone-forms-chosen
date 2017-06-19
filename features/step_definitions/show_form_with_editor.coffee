seleniumWebdriver = require 'selenium-webdriver'
{defineSupportCode} = require 'cucumber'

Until = seleniumWebdriver.until

defineSupportCode ({Then}) ->
  Then 'I should see chosen editor', () ->
    condition = Until.elementLocated css: '.chosen-container'
    @driver.wait(condition)
