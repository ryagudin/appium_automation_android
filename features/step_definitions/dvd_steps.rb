Then(/^I navigate to DVD tab and ON DVD subtab$/) do
  side_nav_screen.dvd_button.click
  dvd_screen.on_dvd_sub_tab.click
end

Then(/^I click first movie on DVD screen$/) do
  sleep 2
  dvd_screen.first_movie.click
end

Then(/^I click WTS button on DVD mob screen$/) do
  dvd_mob_screen.wts_button.click
end

