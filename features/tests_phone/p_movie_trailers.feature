@phone @trailer
Feature: Verify the functionality of movie trailers.

  Scenario: First Movie trailer on Box Office MOB successfully start and complete playing.
    Given I enable dgns logs
    Given I navigate to Box Office screen
    Then I click first movie on Box Office screen
    Then I start movie trailer on Box Office MOB
    Then I verify that trailer playback started and successfully completed
    Then I start movie trailer on Box Office MOB
    Then I verify that trailer can pause and unpause
