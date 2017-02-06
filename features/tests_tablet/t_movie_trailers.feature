Feature: Verify the functionality of movie trailers in different pathes on tablet.


  Scenario: Movie trailer successfully playing on Box Office MOB page.
    Given I enable dgns logs
    And I navigate to Box Office screen
    And I click first movie on Box Office screen
    When I start movie trailer on Box Office MOB on tablet
    Then I verify that trailer playback started and successfully completed

  Scenario: Movie trailer successfully playing in Box Office/ Now Playing list.
    Given I enable dgns logs
    And I navigate to Box Office screen
    When I start movie trailer in Box Office Now Playing list on tablet
    Then I verify that trailer playback started and successfully completed

  Scenario: Videos trailer successfully playing in Box Office/Opening This Week list
    Given I enable dgns logs
    And I click on the main menu button in the action bar
    And I click on DVD in the Side_menu
    And I click first movie on DVD screen
    When I start Videos trailer on DVD MOB page on tablet
    Then I verify that trailer playback started and successfully completed

  Scenario: Movie trailer successfully playing on Box Office MOB page in SD format.
    Given I enable dgns logs
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    And I click on the settings trailer quality in the Settings page
    And I change trailer quality to the Standard Definition
    And I click on the main menu button in the action bar
    And I click Box Office in the Side_menu
    And I navigate to Box Office screen
    And I click first movie on Box Office screen
    When I start movie trailer on Box Office MOB on tablet
    Then I verify that trailer playback started and successfully completed