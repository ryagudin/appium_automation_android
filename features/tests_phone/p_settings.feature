@phone @settings
Feature: Testing Settings page elements on phone


  Scenario: Settings page is loaded
    And I click on the main menu button in the action bar
    When I click on the menu settings button in the the action bar
    Then Settings page is opened

  Scenario: User logged in with valid Facebook credentials (requirements: user logged out from the Facebook app)
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    When I click on the Facebook connect button in the Settings page
    And I click the Facebook login link
    Then I connected with Facebook account successfully


  Scenario: User logged in with valid Google credentials
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    And I click on the Google sign_in button in the Settings page
    And Choose account for Flixster dialog is appeared
    When I select an existing google account in the list
    Then User connected with Google account successfully
    And Google logged in message returns user to the Settings page

  Scenario: Element: Privacy Policy in the Settings
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    When I click on the settings privacy_policy in the Settings page
    #tablet
 #   And I click on the Just Once button in the Open With dialog box
    Then Privacy policy web page is loaded

  Scenario: Element: Copyright at the bottom of the Settings page
    And I click on the main menu button in the action bar
    And I click on the menu settings button in the the action bar
    When I scroll the Settings page up to the bottom
    Then I check the text at the bottom of the Settings page

