
When(/^I sign up with valid user credentials$/) do
  # require 'pry'
  # binding.pry

  # enter first name
  sign_up_screen.first_name.click
  sign_up_screen.first_name.send_keys("Milka")

  #enter last name
  sign_up_screen.last_name.click
  sign_up_screen.last_name.send_keys("Dron")

  #enter email
  sign_up_screen.email.click
  @random_email = generate_random_email
  sign_up_screen.email.send_keys(@random_email)

  #enter password
  sign_up_screen.password.click
  sign_up_screen.password.send_keys("passw0rd22")

  #enter confirmation password
  sign_up_screen.confirm_password.click
  sign_up_screen.confirm_password.send_keys("passw0rd22")
end

When(/^I submit the Sign Up form$/) do
  actual_result = sign_up_screen.continue_button.click
  if actual_result == false
    fail "+++++ Element Not Found +++++++"
  end
end

Then(/^I verify that user registered successfully$/) do
  box_office_screen.main_menu_button.click
  side_nav_screen.settings_button.click
  actual_result = settings_screen.flixster_account_status.text

  if actual_result != @random_email
    fail "+++++ Fail Account Not generated +++++++"
  end
end

And(/^I sign up with invalid user email$/) do
  # enter first name
  sign_up_screen.first_name.click
  sign_up_screen.first_name.send_keys("Milka")

  #enter last name
  sign_up_screen.last_name.click
  sign_up_screen.last_name.send_keys("Dron")

  #enter email
  sign_up_screen.email.click
  sign_up_screen.email.send_keys("tatyana.tunina+12@flixster-inc")

  #enter password
  sign_up_screen.password.click
  sign_up_screen.password.send_keys("passw0rd22")

  #enter confirmation password
  sign_up_screen.confirm_password.click
  sign_up_screen.confirm_password.send_keys("passw0rd22")
end

Then(/^I verify an email field indicator$/) do
  actual_result = sign_up_screen.email_indicator.click
  if actual_result != true
    fail "+++++ Fail. Email indicator Not Found +++++++"
  end
end

And(/^I sign up with blank first name$/) do
  sign_up_screen.first_name.click
  sign_up_screen.first_name.send_keys("")

  #enter last name
  sign_up_screen.last_name.click
  sign_up_screen.last_name.send_keys("Dron")

  #enter email
  sign_up_screen.email.click
  @random_email = generate_random_email
  sign_up_screen.email.send_keys(@random_email)

  #enter password
  sign_up_screen.password.click
  sign_up_screen.password.send_keys("passw0rd22")

  #enter confirmation password
  sign_up_screen.confirm_password.click
  sign_up_screen.confirm_password.send_keys("passw0rd22")
end


Then(/^I verify an first name field indicator$/) do
  actual_result = sign_up_screen.first_name_indicator.click
  if actual_result != true
    fail "+++++ Fail. First Name indicator Not Found +++++++"
  end
end

And(/^I sign up with password not matching to the confirm password$/) do
  sign_up_screen.first_name.click
  sign_up_screen.first_name.send_keys("Milka")

  #enter last name
  sign_up_screen.last_name.click
  sign_up_screen.last_name.send_keys("Dron")

  #enter email
  sign_up_screen.email.click
  @random_email = generate_random_email
  sign_up_screen.email.send_keys(@random_email)

  #enter password
  sign_up_screen.password.click
  sign_up_screen.password.send_keys("password22")

  #enter confirmation password
  sign_up_screen.confirm_password.click
  sign_up_screen.confirm_password.send_keys("passw0rd22")
end

Then(/^I verify confirm password field indicator$/) do
  actual_result = sign_up_screen.confirm_password.click
  if actual_result != true
    fail "+++++ Fail. Confirm password indicator Not Found +++++++"
  end
end

And(/^I sign up with invalid password$/) do
  sign_up_screen.first_name.click
  sign_up_screen.first_name.send_keys("Milka")

  #enter last name
  sign_up_screen.last_name.click
  sign_up_screen.last_name.send_keys("Dron")

  #enter email
  sign_up_screen.email.click
  @random_email = generate_random_email
  sign_up_screen.email.send_keys(@random_email)

  #enter password
  sign_up_screen.password.click
  sign_up_screen.password.send_keys("pass")

  #enter confirmation password
  sign_up_screen.confirm_password.click
  sign_up_screen.confirm_password.send_keys("pass")
end

Then(/^I verify password field indicator$/) do
  actual_result = sign_up_screen.password_indicator.click
  if actual_result != true
    fail "+++++ Fail. Password indicator Not Found +++++++"
  end
end

And(/^I press Open Flixster App button if success message appears$/) do
  sign_up_screen.logged_in_message_button.click
end



Given(/^I am logged in with New Flixster user$/) do
# Create and Login with New Random FLX user, check login, finish on Side Nav menu
  random_email = generate_random_email
  expected_email = random_email

  box_office_screen.main_menu_button.click
  side_nav_screen.signup_link.click
  sign_up_screen.first_name.click
  sign_up_screen.first_name.send_keys(fname)
  sign_up_screen.last_name.click
  sign_up_screen.last_name.send_keys(lname)
  sign_up_screen.email.click
  sign_up_screen.email.send_keys(random_email)
  hide_keyboard
  sign_up_screen.password.click
  sign_up_screen.password.send_keys("passw0rd")
  hide_keyboard
  sign_up_screen.confirm_password.click
  sign_up_screen.confirm_password.send_keys("passw0rd")
  hide_keyboard
  sign_up_screen.continue_button.click
  sleep 2
  box_office_screen.main_menu_button.click
  p "Expected email: #{expected_email}"
  p "Actual email:   #{side_nav_screen.user_email_side_nav}"
  fail unless side_nav_screen.user_email_side_nav == expected_email
# box_office_screen.search_icon.click    # Add this line to finish on Box Office
end

