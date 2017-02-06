@phone @ga
Feature: Verify Google Analytics functionality

  Scenario: Verify Google Analytics on Bpx Office subtabs Level 1 (Now Playng, Upcoming, News)
    Given I navigate to Box Office screen
    Then I click on the Upcoming tab
    Then I verify GA logs
