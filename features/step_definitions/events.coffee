seleniumWebdriver = require 'selenium-webdriver'
{defineSupportCode} = require 'cucumber'

Until = seleniumWebdriver.until
{By, WebElementCondition, Condition} = seleniumWebdriver

defineSupportCode ({When, Then}) ->
  When 'Click on the editor', () ->
    @driver.findElement css: '.chosen-container'
    .then (element) -> element.click()

  Then 'Focus event is fired', () ->
    condition = new WebElementCondition '', (driver) ->
      driver.findElement css: '.blur'
      .then (element) -> element.isDisplayed().then (v) -> if v then null else element
    @driver.wait(condition)

  When 'Leaving the editor', () ->
    @driver.findElement css: 'body'
    .then (element) -> element.click()

  Then 'Blur event is fired', () ->
    condition = new WebElementCondition '', (driver) ->
      driver.findElements css: '.focus'
      .then (elements) -> elements[0]
      .then (element) -> element.isDisplayed().then (v) -> if v then null else element
    @driver.wait(condition)

  When 'Select new state', () ->
    @driver.findElement css: '.chosen-container'
    .then (element) -> element.click()
    .then () => @driver.findElement xpath: "//li[contains(., 'Alaska')]"
    .then (element) -> element.click()

  Then 'Change event is fired', () ->
    condition = new Condition '', (driver) ->
      driver.findElements css: '.change .label'
      .then (elements) -> elements.length is 2
    @driver.wait(condition)
