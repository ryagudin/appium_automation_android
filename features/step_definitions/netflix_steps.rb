Given(/^I open side Nav Menu$/) do
  box_office_screen.main_menu_button.click
end

Then(/^I tap Settings icon$/) do
  wait {side_nav_screen.settings_button.click}
end

Then(/^I tap Netflix Login button$/) do
  wait {settings_screen.netflix_login.click}
end

Then(/^I enter Netflix Login username$/) do
  netflix_screen.netflix_login_field.send_keys("iphone.dev@flixster-inc.com")
end

Then(/^I enter Netflix Password$/) do
  netflix_screen.netflix_password_field.send_keys("fl1xster")
end

Then(/^I click Netflix Login Button$/) do
  wait { netflix_screen.netflix_login_button.click }
end

Then(/^I verify I am logged in to Netflix$/) do
  raise unless wait { netflix_screen.netflix_logout_text }
end

Then(/^I verify that Side Nav Menu contains Netflix Queue after Login$/) do
  box_office_screen.main_menu_button.click
  raise unless wait { side_nav_screen.netflix_queue_button }
end

Then(/^I enter Netflix Password Incorrectly$/) do
  netflix_screen.netflix_password_field.send_keys("fl1xster1")
end

Then(/^I can observe Netflix Login error$/) do
  raise unless wait { find_element(name: "Authorization Failed") }
end

Given(/^I am connected to Netflix dev account$/) do
  box_office_screen.main_menu_button.click
  side_nav_screen.settings_button.click
  settings_screen.netflix_login.click
  netflix_screen.netflix_login_field.send_keys("iphone.dev@flixster-inc.com")
  netflix_screen.netflix_password_field.send_keys("fl1xster")
  wait { netflix_screen.netflix_login_button.click }
  wait { netflix_screen.netflix_logout_text }
end

Then(/^I can see Netflix Queue in Side Nave Menu$/) do
  settings_screen.main_menu_button.click
  raise unless wait { find_element(name: "Netflix") } #->Check Netflix Section exists
  raise unless side_nav_screen.netflix_queue_button

end

Then(/^I open Netflix Queue screen$/) do
  side_nav_screen.netflix_queue_button.click
end

Then(/^I verify elements on Netflix Queue screen$/) do
  # verify Header menu: title and sub titles
  wait { find_elements(name: "Netflix Queue") }
  find_elements(name: "Instant")
  find_elements(name: "DVD")
  find_elements(name: "Saved")
end

Given(/^I am on DVD tab and On Netflix subtab screen$/) do
  settings_screen.main_menu_button.click
  side_nav_screen.dvd_button.click
  # wait { find_element(name: "On Netflix").click }
  dvd_screen.on_netflix_sub_tab.click
  # wait { find_element(id: "net.flixster.android:id/qa_movielist_item").click } # click on first movie on dvd
  sleep 4
  dvd_screen.first_movie.click
end

Then(/^I add movie to DVD Queue while on MOB$/) do
  sleep 4

  begin
    if wait { common_screen_actions.element_exists? { netflix_screen.queue } }
      wait { find_element(name: "Saved In Queue").click }
      wait { find_element(name: "Remove from DVDs").click }
      wait { find_element(name: "Add To Netflix Queue").click }
      wait { find_element(name: "Add to Top of DVDs").click }
    else
      wait { find_element(name: "Add To Netflix Queue").click }
      wait { find_element(name: "Add to Top of DVDs").click }
    end
  end
end

Then(/^I verify that the Netflix status is changed to Saved in Queue$/) do
  raise unless wait { find_element(name: "Saved In Queue") }
end

Then(/^I verify that Netflix movie shows on Netflix Queue screen$/) do

  netflix_movie = dvd_mob_screen.movie_title.text
  p ">>>> INFO -  Movie Saved in Netflix DVD Queue is : #{netflix_movie}"
  app_restart
  dvd_mob_screen.main_menu_button.click
  side_nav_screen.netflix_queue_button.click
  netflix_screen.dvd_subtab.click

  begin
    if wait { common_screen_actions.element_exists? { netflix_screen.neflix_movielist_grip } } == false
      fail ">>>> FAIL - Netflix Queue or Movies Failed to load. Check Netflix DVD Queue Manually for the following movie: #{netflix_movie}  <<<<<"
    elsif wait { find_element(name: "#{netflix_movie}") }
      p ">>>> PASS -  Movie was added successfully"
    else
      netflix_queue != wait { find_element(name: "#{netflix_movie}") }
      raise ">>>> FAIL - Netflix Queue was loaded but Netflix Movie is different"

    end

  end

end
