Then(/^I Click Rating button$/) do
  box_office_mob_screen.add_rating_button.click
end

Then(/^I add Rating$/) do
  rating_screen.rate_bar.click
end

Then(/^I add Review comment$/) do
  rating_screen.add_review_field.click
  rating_screen.add_review_field.send_keys("testrating123$")
  rating_screen.save_button.click
end

Then(/^I verify rated movie$/) do
  rated_movie = dvd_mob_screen.movie_title.text
  p rated_movie
  dvd_mob_screen.main_menu_button.click
  side_nav_screen.ratings_button.click
  rating_screen.movie_title.click
  wait { find_element(name: "#{rated_movie}") }
  p ">>>> PASS - 1. Movie added to Ratings page - OK"
  rating_screen.rate_change_button.click
  wait { find_element(name: "testrating123$") }
  p ">>>> PASS - 2. Comment was saved successfully - OK"
  rating_screen.rate_bar
  p ">>>> PASS - 3. Movie has Rating Stars - OK"
end


Then(/^I verify rated movie in Ratings page on the tablet$/) do
  rated_movie = dvd_mob_screen.movie_title_tablet.text
  p rated_movie
  dvd_mob_screen.main_menu_button.click
  side_nav_screen.ratings_button.click
  rating_screen.movie_title_tablet.click
  wait { find_element(name: "#{rated_movie}") }
  p ">>>> PASS - 1. Movie added to Ratings page - OK"
  rating_screen.rate_change_button.click
  wait { find_element(name: "testrating123$") }
  p ">>>> PASS - 2. Comment was saved successfully - OK"
  rating_screen.rate_bar
  p ">>>> PASS - 3. Movie has Rating Stars - OK"
end

