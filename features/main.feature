Feature: Example

  Scenario: Show form with editor
    Given Show form
    Then I should see chosen editor

  Scenario: Events
    Given Show form
    When Click on the editor
    Then Focus event is fired
    When Leaving the editor
    Then Blur event is fired
    When Select new state
    Then Change event is fired
