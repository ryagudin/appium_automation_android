@phone @mob @smoke
Feature: Testing Movie Details page UI in different pathes

@wip
  Scenario: Movie details page in the path: 'Box Office/Upcoming sub_tab'
    And I click on the Upcoming tab
    And I touch a movie in the Upcoming list
    And I am looking for the button name "Want To See" in the movie details page
    And I am looking for the button name "Not Interested" in the movie details page
    And I am looking for the button name "Add Rating" in the movie details page
    And I am looking for the element "movie poster" in the movie details page
    # phone only
    And I am looking for the element "hero trailer" in the movie details page




  Scenario Outline: Movie detail page has all the MOB Sections
    Given I navigate to Box Office screen
    Given I click first movie on Box Office screen
    Then I verify that all "<sections>" of the Box Office MOB screen are displayed

    Examples:
      | sections                        |
      | Want To See                     |
      | Not Interested                  |
      | Add Rating                      |
#       | Showtimes                       |
#       | Buy, Rent, Stream               |
      | Movie Info                      |
      | Videos                          |
      | Photos                          |
      | Cast and Crew                   |
      | Rotten Tomatoes™ Critic Reviews |
      | User Reviews                    |





