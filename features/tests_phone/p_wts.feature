@phone @wts
Feature: To test Want to See functionality.

  Scenario: Verify that movie is added to Want To See On DVD section.
    Given I am logged in with New Flixster user
    Then I navigate to DVD tab and ON DVD subtab
    Then I click first movie on DVD screen
    Then I click WTS button on DVD mob screen
    Then I verify that WTS movie is displayed on WTS page
