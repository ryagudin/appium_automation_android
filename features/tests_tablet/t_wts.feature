Feature:  Testing the 'Want To See' functionality in different paths on tablet
  Note: WTS page opens only in portrait orientation

  @smoke_t
  Scenario: Verify that movie is added to Want To See On DVD section.
    Given I am logged in with New Flixster user
    Then I navigate to DVD tab and ON DVD subtab
    Then I click first movie on DVD screen
    Then I click WTS button on DVD mob screen
    Then I verify that WTS movie is displayed on WTS page_on tablet


  Scenario: Verify that Box Office/Now Playing movie is added to 'Want To See' list*
    Given I click on the main menu button in the action bar
    And I click on Login button in the Side_menu
    And I logged in with existing Flixster user credentials
    And I close the Side_menu
    And I select movie in the Top Box Office list
    When I click Want To See button on Box Office mob page
    Then I verify that WTS movie is displayed on WTS Upcoming page
  @smoke_t
  Scenario: Sorting movies By Title in "In Theaters" collection
    Given I click on the main menu button in the action bar
    And I click on Login button in the Side_menu
    And I logged in with existing Flixster user credentials
    And I click on the main menu button in the action bar of the Settings page
    And I click Want To See in the Side_menu
    And I click sort menu in the action bar of the WTS page
    When I select By Title option in the Sort menu
    Then Movies in collection sorted by title
  @smoke_t
  Scenario: Sorting movies By Title in "On DVD" collection
    Given I click on the main menu button in the action bar
    And I click on Login button in the Side_menu
    And I logged in with existing Flixster user credentials
    And I click on the main menu button in the action bar of the Settings page
    And I click Want To See in the Side_menu
    And I navigate to ON DVD sub_tab on the Want To See page
    And I click sort menu in the action bar of the WTS page
    When I select By Title option in the Sort menu
    Then Movies in collection sorted by title
  @smoke_t
  Scenario: Sorting movies By Tomatometer in "In Theaters" collection
    Given I click on the main menu button in the action bar
    And I click on Login button in the Side_menu
    And I logged in with existing Flixster user credentials
    And I click on the main menu button in the action bar of the Settings page
    And I click Want To See in the Side_menu
    And I click sort menu in the action bar of the WTS page
    When I select By Tomatometer option in the Sort menu
    Then Movies in collection sorted by tomatometer