@smoke_t
Feature: Testing Search functinality for movie and actor

  Scenario: Search for movie, using Search button on the keyboard
    Given I click on the search icon in the action bar of the Box Office page
    And I enter text into the search field
    When I press search button on keyboard
    Then I verify movie in the search result
