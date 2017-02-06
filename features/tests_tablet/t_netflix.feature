Feature: Testing Netflix functionality on tablet

  Scenario: User is able to login into Netflix account
    Given I open side Nav Menu
    Then  I tap Settings icon
    Then  I tap Netflix Login button
    Then  I enter Netflix Login username
    Then  I enter Netflix Password
    Then  I click Netflix Login Button
    Then  I verify I am logged in to Netflix
    Then  I verify that Side Nav Menu contains Netflix Queue after Login

  Scenario: Verify unsuccessful Login to Netflix
    Given I open side Nav Menu
    Then I tap Settings icon
    Then I tap Netflix Login button
    Then I enter Netflix Login username
    Then I enter Netflix Password Incorrectly
    Then I click Netflix Login Button
    Then I can observe Netflix Login error

  Scenario: verify Netflix Queue screen
    Given I am connected to Netflix dev account
    Then I can see Netflix Queue in Side Nave Menu
    Then I open Netflix Queue screen
    Then I verify elements on Netflix Queue screen