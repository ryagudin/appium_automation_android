And(/^I click on the main menu button in the action bar$/) do
  # require 'pry'
  # binding.pry
  actual_result = box_office_screen.main_menu_button.click
  if actual_result != true
    fail "++++++ Fail. Main menu button Not Found ++++++++++"
  end
end

And(/^I click on the Upcoming tab$/) do
  actual_result = box_office_screen.upcoming_sub_tab.click
  if actual_result != true
    fail "++++++ Fail. Element Not Found ++++++++++"
  end
end

And(/^I touch a movie in the Upcoming list$/) do
  box_office_screen.movie_item.click
end

Given(/^I click first movie on Box Office screen$/) do
  box_office_screen.first_movie.click
end

Given(/^I click on the search icon in the action bar of the Box Office page$/) do
  box_office_screen.search_icon.click
end


Given(/^I click on the See All button under the Opening This Week list$/) do
  box_office_screen.see_all_button.click
end

Then(/^Opening This Week page is opened$/) do
  actual_result = box_office_screen.opening_this_week_page.text
  expected_result = "Opening This Week"
  actual_result == expected_result
end

And(/^I verify that the movies list is expanded$/) do
  check_list_elements("net.flixster.android:id/movielist_title")
end

Given(/^I select movie in the Box Office list and click on its pipe_menu$/) do
  box_office_screen.movie_pipe_menu.click
end

When(/^I chose Want To See menu item$/) do
  actual_result = box_office_screen.wts_movie_pipe_menu.text
  expected_result = "Want To See"
  actual_result == expected_result

  box_office_screen.wts_movie_pipe_menu.click
end

Then(/^I verify the Login to Add Your Rating page loaded$/) do
  actual_result = box_office_screen.login_to_add_your_rating_page.text
  expected_result = "Login to Add Your Rating"
  actual_result == expected_result
end

And(/^I verify that page contains Flixster login button$/) do
  box_office_screen.login_with_Flixster_button.click
end

Given(/^I select movie in the Top Box Office list$/) do
  box_office_screen.first_movie.click
end


Given(/^Now Playing movies list on the Box Office page$/) do
  exists { find_elements(id: "net.flixster.android:id/qa_movielist_item") } ? puts('true') : puts('false')
  if false
    print "++++++++ FAIL ++++++++++"
  end
end

Then(/^I check duplicate movies in the Now Playing list$/) do
  array_ids = []
  array_titles = []

  array_ids = find_elements(id: "net.flixster.android:id/qa_movielist_item")
  array_ids.each do |element|
    find_element(id: "net.flixster.android:id/qa_movielist_item")
    array_titles.push(element["name"])
  end
  find_duplicates(array_titles)
end

Given(/^I navigate to Box Office screen$/) do
  box_office_screen.now_playing_sub_tab.click
end

When(/^I start movie trailer in Box Office Now Playing list on tablet$/) do
  log = `adb logcat -c`
  print "++++++ Clearing Movie Trailer logs...\n +++++++++"
  print "++++++++ Printing Logs...\n Logs Should be empty: ->{#{log}} +++++++"
  box_office_screen.movie_thumbnail_trailer_tablet.click
end

And(/^I scroll the movies list up to the bottom$/) do
  box_office_screen.movies_list.swipe(start_y: 0.0, end_y: 0.02).perform
end

Then(/^I verify that footer of the list has only Rating by Flixster$/) do
  box_office_screen.movies_list_footer_title_fl.text.include? ('Ratings by Flixster')
  box_office_screen.movies_list_footer_popcorn.text.include? ('Flixster users rated the movie favorably')
  box_office_screen.movies_list_footer_spilled.text.include? ('Flixster users rated the movie favorably')
end

Then(/^I verify that footer of the list has only Rating by Rotten Tomatoes$/) do
  box_office_screen.movies_list_footer_title_rt.text.include? ('Ratings by Rotten Tomatoes')
  box_office_screen.movies_list_footer_rt_fresh.text.include? ('critics rated the movie positively')
  box_office_screen.movies_list_footer_rt.text.include? ('critics rated the movie positively')
end
