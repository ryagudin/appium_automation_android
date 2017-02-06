@smoke_t
Feature: Testing "Theaters" page elements on tablet

  Scenario: Add favorite theater and verify that no duplicates in the theaters lists
    Given I click on the main menu button in the action bar
    And I click on Theaters in the Side_menu
    And I select theater in the Nearby list and click on its pipe_menu
    When I chose Add favorite menu item
    Then I verify that favorite theater is marked with star icon
    And I check duplicate theaters in the list
    And I swith to the By Name list
    And I check duplicate theaters in the list
