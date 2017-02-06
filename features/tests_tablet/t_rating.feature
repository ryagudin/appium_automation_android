@smoke_t
Feature: Testing the 'Rating' functionality in different paths on tablet

  Scenario: A logged-in user can rate a movie, and provide a review.
    Given I am logged in with New Flixster user
    And I navigate to DVD tab and ON DVD subtab
    And I click first movie on DVD screen
    And I Click Rating button
    And I add Rating
    Then I add Review comment
    Then I verify rated movie in Ratings page on the tablet