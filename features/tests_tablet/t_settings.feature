Feature: Testing Settings page elements in portrait tablet
  Login scenarios requirements: user logged out from the native apps.
  Known issue: Only a portrait list is scrolled

  Scenario: Settings page is loaded
    And I click on the main menu button in the action bar
    When I click on the menu settings button in the the action bar
    Then Settings page is opened

  Scenario:  NEGATIVE User failed login with invalid Facebook credentials (invalid user name)
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    When I click on the Facebook connect button in the Settings page
    And I fill out login fields with invalid user name
    When I click Facebook login button
    Then Facebook login error popup returns user to the Settings page

  Scenario: NEGATIVE User failed login with invalid Facebook credentials (invalid password)
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    When I click on the Facebook connect button in the Settings page
    And I fill out login fields with invalid password
    When I click Facebook login button
    Then Facebook incorrect password popup returns user to the Facebook password field

  Scenario: User logged in with valid Facebook credentials
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    When I click on the Facebook connect button in the Settings page
#    Then I connected with Facebook account successfully


  Scenario: User logged in with valid Google credentials
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    And I click on the Google sign_in button in the Settings page
    And Choose account for Flixster dialog is appeared
    When I select an existing google account in the list
    #Then User connected with Google account successfully
   # And Google logged in message returns user to the Settings page
    And Google login error popup returns user to the Settings page

  @smoke_t
  Scenario: Element: Privacy Policy in the Settings
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    When I click on the settings privacy_policy in the Settings page
    And I click on the Just Once button in the Open With dialog box
    Then Privacy policy web page is loaded

  @smoke_t
  Scenario: Element: Copyright at the bottom of the Settings page
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    When I scroll the Settings page up to the bottom
    Then I check the text at the bottom of the Settings page

  @smoke_t
  Scenario: Element: Location in the Settings
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    When I click on the settings location in the Settings page
    Then Location Preferences screen is opened

  @smoke_t
  Scenario: Element: Terms and Policies in the Settings
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    When I click on the settings terms and policies in the Settings page
    And I click on the Just Once button in the Open With dialog box
    Then Terms and Policies web page is loaded

  @smoke_t
  Scenario: 'BoxOffice/Now Playing' list shows the rating by Flixster
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    When I turn off the Rotten Tomatoes settings
    And I click on the main menu button in the action bar
    And I click Box Office in the Side_menu
    And I scroll the movies list up to the bottom
    Then I verify that footer of the list has only Rating by Flixster

  @smoke_t
  Scenario: 'BoxOffice/Now Playing' list shows the rating by Rotten Tomatoes*
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    When I turn off the Flixster settings
    And I click on the main menu button in the action bar
    And I click Box Office in the Side_menu
    And I scroll the movies list up to the bottom
    Then I verify that footer of the list has only Rating by Rotten Tomatoes

  @smoke_t
  Scenario: 'BoxOffice/Upcoming' list shows the rating by Flixster
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    When I turn off the Rotten Tomatoes settings
    And I click on the main menu button in the action bar
    And I click Box Office in the Side_menu
    And I click on the Upcoming tab
    And I scroll the movies list up to the bottom
    Then I verify that footer of the list has only Rating by Flixster

  @smoke_t
  Scenario: 'BoxOffice/Upcoming' list shows the rating by Rotten Tomatoes
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    When I turn off the Flixster settings
    And I click on the main menu button in the action bar
    And I click Box Office in the Side_menu
    And I click on the Upcoming tab
    And I scroll the movies list up to the bottom
    Then I verify that footer of the list has only Rating by Rotten Tomatoes

  @smoke_t
  Scenario: 'DVD/On DVD' list shows the rating by Flixster
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    When I turn off the Rotten Tomatoes settings
    And I click on the main menu button in the action bar
    And I navigate to DVD tab and ON DVD subtab
    And I scroll the movies list up to the bottom
    Then I verify that footer of the list has only Rating by Flixster

  @smoke_t
  Scenario: 'DVD/On DVD' list shows the rating by Rotten Tomatoes
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    When I turn off the Flixster settings
    And I click on the main menu button in the action bar
    And I navigate to DVD tab and ON DVD subtab
    And I scroll the movies list up to the bottom
    Then I verify that footer of the list has only Rating by Rotten Tomatoes

  @smoke_t
  Scenario: Trailer quality can be changed from the HD (default) to SD format
    Given I enable dgns logs
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    And I click on the settings trailer quality in the Settings page
    When I change trailer quality to the Standard Definition
    Then Trailer quality indicator is changed to the Standard Definition