{defineSupportCode} = require('cucumber')

defineSupportCode ({After, Before}) ->
  After () -> @driver.quit()
