And(/^I logged in with existing Flixster user credentials$/) do
  # enter user email
  login_to_flixster_screen.email_address.send_keys("test0001@flixstermail.com")

  #enter user password
  login_to_flixster_screen.password.click
  login_to_flixster_screen.password.send_keys("passw0rd")

  # press login button
  login_to_flixster_screen.login_button.click
end