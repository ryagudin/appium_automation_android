@phone @netflix
Feature: Tests for Netflix functionality : Login , Add to queue

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

  Scenario: I verify Add to DVD queue option$
    Given I am connected to Netflix dev account
    Given I am on DVD tab and On Netflix subtab screen
    Then I add movie to DVD Queue while on MOB
    Then I verify that the Netflix status is changed to Saved in Queue
    Then I verify that Netflix movie shows on Netflix Queue screen