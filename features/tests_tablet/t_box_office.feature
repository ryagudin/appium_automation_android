@smoke_t
Feature: Testing "Box Office" page elements on tablet

  Scenario: The 'See All' button expands the "Opening This Week" movie list
    Given I click on the See All button under the Opening This Week list
    Then Opening This Week page is opened
    And I verify that the movies list is expanded

  Scenario: The "Login to Add Your Rating" page is loaded when not-logged in user adds movie to the WTS list
    Given I select movie in the Box Office list and click on its pipe_menu
    When I chose Want To See menu item
    Then I verify the Login to Add Your Rating page loaded
    And I verify that page contains Flixster login button

  Scenario: The 'View All Videos' button loads the movie's videos
    Given I select movie in the Top Box Office list
    And I scroll the movie details page down
    When I click Show More Reviews button
    Then Critic Reviews page is opened with reviews list

  Scenario: The 'View All Videos' button loads the list of video clips*
    And I click on the Upcoming tab
    And I touch a movie in the Upcoming list
    When I press View All Videos button in the Videos section
    Then I verify that the video clips list is opened

  Scenario: The 'View All Photos' button loads the list of photos*
    And I click on the Upcoming tab
    And I touch a movie in the Upcoming list
    When I press View All Photos button in the Photos section
    Then Photo album is loaded

  Scenario: Verify duplicate in the reviews list
    Given I select movie in the Top Box Office list
    And I scroll the movie details page down
    When I click Show More Reviews button
    Then I check duplicate reviews in the Critic Reviews list

  Scenario: Verify duplicate movies in the Box Office/Now Playing list
    Given Now Playing movies list on the Box Office page
    Then I check duplicate movies in the Now Playing list
