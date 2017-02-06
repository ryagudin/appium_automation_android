# require 'pry'
# binding.pry
And(/^I click on Sign Up link in the Side_menu$/) do
  actual_result = side_nav_screen.signup_link.click
  if actual_result != true
    fail "+++++++ Element Not Found ++++++++++"
  end
end

And(/^I click Want To See in the Side_menu$/) do
 actual_result = side_nav_screen.wts_button.click
  if actual_result != true
    fail "+++++++ Fail. WTS element Not Found +++++++++++ "
  end
end

Then(/^I close Side Nav Menu$/) do
  require 'pry'
  binding.pry
  driver.manage().logs().get("logcat");
  find_element(name: "Search").click
  sleep 5
end

And(/^I click on Login button in the Side_menu$/) do
  side_nav_screen.login_button.click
end

And(/^I close the Side_menu$/) do
  box_office_screen.search_icon.click
end

And(/^I click on Theaters in the Side_menu$/) do
  side_nav_screen.theaters_button.click
end

And(/^I click Box Office in the Side_menu$/) do
  side_nav_screen.box_office_button.click
end

And(/^I click on DVD in the Side_menu$/) do
  side_nav_screen.dvd_button.click
end