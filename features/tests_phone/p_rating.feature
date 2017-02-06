@phone @rating
Feature: To test Rating Functionality

  Scenario: 5.11 A logged-in user can rate a movie and, optionally, add a review.
    Given I am logged in with New Flixster user
    Then I navigate to DVD tab and ON DVD subtab
    Then I click first movie on DVD screen
    Then I Click Rating button
    Then I add Rating
    Then I add Review comment
    Then I verify rated movie