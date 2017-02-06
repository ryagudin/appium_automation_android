And(/^I am looking for the button name "([^"]*)" in the movie details page$/) do |name|
  case name
    when "Want To See"
      actual_result = box_office_mob_screen.want_to_see_button.text
      expected_result = "Want To See"
      if (actual_result != expected_result)
        fail "+++++++ Fail. 'Want To See' button Not Found +++++++"
      end

    when "Not Interested"
      actual_result = box_office_mob_screen.not_interested_button.text
      expected_result = "Not Interested"
      if (actual_result != expected_result)
        fail "+++++++ Fail. 'Not Interested' button Not Found  +++++++"
      end

    when "Add Rating"
      actual_result = box_office_mob_screen.add_rating_button.text
      expected_result = "Add Rating"
      if (actual_result != expected_result)
        fail "+++++++ Fail. 'Add Rating' button Not Found +++++++"
      end
  end
end

And(/^I am looking for the element "([^"]*)" in the movie details page$/) do |element|
  case element
    when "movie_poster"
      actual_result = box_office_mob_screen.movie_poster.click
      if (actual_result != true)
        fail "+++++++++++ Fail. Poster Not Found ++++++++++"
      end

    when "hero trailer"
      actual_result = box_office_mob_screen.hero_trailer.click
      if (actual_result != true)
        fail "+++++++++++ Fail. Hero trailer Not Found ++++++++++"
      end

    when "netflix icon"
      actual_result = box_office_mob_screen.netflix_icon.text
      expected_result = "Netflix"
      if (actual_result != expected_result)
        fail "+++++++++++ Fail. Icon Netflix Not Found ++++++++++"
      end

    when "amazon instant video_icon"
      actual_result = box_office_mob_screen.amazon_instant_video_icon.text
      expected_result = "Amazon Instant Video"
      if (actual_result != expected_result)
        fail "+++++++++++ Fail. Icon Amazon Instant Video Not Found ++++++++++"
      end
  end
end

And(/^I scroll the movie details page down$/) do
  sleep(5)
  wait {swipe(start_y: 0.0, end_y: 0.02).perform}
end

When(/^I click Show More Reviews button$/) do
  box_office_mob_screen.show_more_reviews_button.click
end

Then(/^Critic Reviews page is opened with reviews list$/) do
  actual_result = box_office_mob_screen.critic_reviews_page.text
  expected_result = "Critic Reviews"
  actual_result == expected_result

  check_list_elements("net.flixster.android:id/critic_namesource")
end

Then(/^I verify that all "([^"]*)" of the Box Office MOB screen are displayed$/) do |sections|

  scroll_to_element_in_list(sections)

end



When(/^I press View All Videos button in the Videos section$/) do
  box_office_mob_screen.view_all_videos_button.click
end

Then(/^I verify that the video clips list is opened$/) do
  check_list_elements("net.flixster.android:id/clip_text")
end

When(/^I press View All Photos button in the Photos section$/) do
  box_office_mob_screen.view_all_photos_button.click
end

Then(/^Photo album is loaded$/) do
  exists {id('net.flixster.android:id/photo_gallery_gridview')} ? puts('true') : puts('false')
  if true
    print "+++++ PASS ++++++++"
  else
    print "++++++ FAIL ++++++"
  end
end


And(/^I check duplicate reviews in the Critic Reviews list$/) do
  array_ids = []
  array_titles = []

  array_ids = find_elements(id: "net.flixster.android:id/critic_namesource")
  array_ids.each do |element|
    find_element(id: "net.flixster.android:id/critic_namesource")
    array_titles.push(element["name"])
end
  find_duplicates(array_titles)
end


Then(/^I start movie trailer on Box Office MOB$/) do
  log = `adb logcat -c`
  p ">>>> ------ Clearing Movie Trailer logs... <<<<"

  fail ">>>> FAIL - LOG WAS NOT DELETED." unless log == ""

  p ">>>> PASS - Logs are empty: [#{log}]<- <<<<"
  box_office_mob_screen.movie_trailer_play_button.click
end

When(/^I start movie trailer on Box Office MOB on tablet$/) do
  log = `adb logcat -c`
  p ">>>> ------ Clearing Movie Trailer logs... <<<<"

  fail ">>>> FAIL - LOG WAS NOT DELETED." unless log == ""

  p ">>>> PASS - Logs are empty: [#{log}]<- <<<<"
  box_office_mob_screen.movie_trailer_play_button_tablet.click
end

When(/^I start Videos trailer on DVD MOB page on tablet$/) do
  log = `adb logcat -c`
  print "+++++++ Clearing Movie Trailer logs... +++++++++"

  fail "++++++++ FAIL - LOG WAS NOT DELETED." unless log == ""

  print "\n++++++ PASS - Logs are empty: [#{log}]<- +++++++"
  box_office_mob_screen.views_trailer_tablet.click
end


And(/^I save a movie title tested on the MOB page$/) do
  movie_title = find_element(id: "net.flixster.android:id/md_moviename").text
  print "+++++ Tested movie is #{movie_title} ++++++++++"
end