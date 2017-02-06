Given(/^I enable dgns logs$/) do
  box_office_screen.search_icon.click
  search_screen.search_text_field.click
  search_screen.enable_dgns
end

And(/^I enter text into the search field$/) do
  actual_result = box_office_screen.search_for_movies_actors.send_keys("Jurassic World")
  expected_result = "Jurassic World"
  actual_result == expected_result
end

And(/^I press search button on keyboard$/) do
  wait {press_keycode(66)}
end

Then(/^I verify movie in the search result$/) do
 actual_result = search_screen.search_result.text
 expected_result = "Jurassic World"
 actual_result == expected_result
  if actual_result != expected_result
    print "++++++++ Fail. Search for movie doesn't work ++++++"
  end
end