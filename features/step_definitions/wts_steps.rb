Then(/^I verify that WTS movie is displayed on WTS page$/) do
  wts_movie = dvd_mob_screen.movie_title.text
  dvd_mob_screen.main_menu_button.click
  side_nav_screen.wts_button.click
  wts_screen.on_dvd_sub_tab.click
  p wts_movie
  wts_movie == find_element(name: "#{wts_movie}")
end

When(/^I click Want To See button on Box Office mob page$/) do
  box_office_mob_screen.want_to_see_button.click
end

Then(/^I verify that WTS movie is displayed on WTS Upcoming page$/) do
  # storing the wts movie title
  wts_movie = wait {box_office_mob_screen.movie_name.text}
  # click the main menu button
  box_office_screen.main_menu_button.click
  # click the WTS button on Side_menu
  side_nav_screen.wts_button_tablet.click
  # navigate to Upcoming sub_tab on WTS page
  wts_screen.upcoming_sub_tab.click
  # find wts movie in the WTS page
  find_element(name: "#{wts_movie}")
end

And(/^I navigate to ON DVD sub_tab on the Want To See page$/) do
  wait { wts_screen.on_dvd_sub_tab.click }
  sleep(10)
end

And(/^I click sort menu in the action bar of the WTS page$/) do
  wait { wts_screen.sort_menu.click }
end

When(/^I select By Title option in the Sort menu$/) do
  wait { wts_screen.sort_by_title.click }
  sleep(5)
end

Then(/^Movies in collection sorted by title$/) do
  array_titles = []

  array_ids = find_elements(id: "net.flixster.android:id/movie_collection_item_title")
  array_ids.each do |element|
    find_element(id: "net.flixster.android:id/movie_collection_item_title")
    array_titles.push(element["name"])
  end
  # movie titles in ascending order
  array_titles.each_cons(2).all? { |i, j| i <= j }
  array_titles
  print "+++++++++PASS. Movie titles in ascending order:  #{array_titles} ++++++++++++"
end

When(/^I select By Tomatometer option in the Sort menu$/) do
  wait { wts_screen.sort_by_tomatometer.click }
end

Then(/^Movies in collection sorted by tomatometer$/) do
  array_titles = []

  array_ids = find_elements(id: "net.flixster.android:id/movie_collection_item_title")
  array_ids.each do |element|
    find_element(id: "net.flixster.android:id/movie_collection_item_title")
    array_titles.push(element["name"])
  end

  # firs movie in WTS collection
  find_element(name: "#{array_titles.first}").click
  rt_score_first_element = find_element(id: "net.flixster.android:id/md_criticlikes_percent").text

  # main menu button
  box_office_screen.main_menu_button.click

  # WTS side_nav menu
  side_nav_screen.wts_button.click

  # last movie in WTS collection
  find_element(name: "#{array_titles.last}").click
  rt_score_last_element = find_element(id: "net.flixster.android:id/md_criticlikes_percent").text

  print "++++++ First movie RT score is #{rt_score_first_element} +++++++++"
  print "+++++++++ \n Last movie RT score is #{rt_score_last_element} +++++++++++++"

  if (rt_score_first_element > rt_score_last_element)
    print "+++++++ PASS. WTS collection sorted by Rotten Tomatoes"
  else
    print "FAIL. WTS collection NOT sorted by Rotten Tomatoes"
  end
end

Then(/^I verify that WTS movie is displayed on WTS page_on tablet$/) do
  wts_movie = dvd_mob_screen.movie_title_tablet.text

  dvd_mob_screen.main_menu_button.click
  side_nav_screen.wts_button.click
  wts_screen.on_dvd_sub_tab.click
  p wts_movie
  wts_movie == find_element(name: "#{wts_movie}")
end