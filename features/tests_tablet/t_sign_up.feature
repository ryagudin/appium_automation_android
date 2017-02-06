@smoke_t
Feature: Testing the 'Sign Up' form in portrait tablet
Known issue: 'Connect' button overlapped with keyboard in the landscape orientation

  Scenario: Create user account
    Given I click on the main menu button in the action bar
    And I click on Sign Up link in the Side_menu
    And I sign up with valid user credentials
    When I submit the Sign Up form
    Then I verify that user registered successfully


  Scenario: User failed create an account with Invalid "email"
    Given I click on the main menu button in the action bar
    And I click on Sign Up link in the Side_menu
    And I sign up with invalid user email
    When I submit the Sign Up form
    Then I verify an email field indicator


  Scenario: User failed create an account with blank "first name"
    Given I click on the main menu button in the action bar
    And I click on Sign Up link in the Side_menu
    And I sign up with blank first name
    When I submit the Sign Up form
    Then I verify an first name field indicator


  Scenario: User failed create an account with password not matching to the confirm password
    Given I click on the main menu button in the action bar
    And I click on Sign Up link in the Side_menu
    And I sign up with password not matching to the confirm password
    When I submit the Sign Up form
    Then I verify confirm password field indicator


  Scenario: User failed create an account with invalid password (less than 6 charachters)
    Given I click on the main menu button in the action bar
    And I click on Sign Up link in the Side_menu
    And I sign up with invalid password
    When I submit the Sign Up form
    Then I verify password field indicator


