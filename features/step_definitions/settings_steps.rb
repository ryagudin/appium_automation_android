# require 'pry'
# binding.pry
When(/^I click on the menu settings button in the the action bar$/) do
  sleep(5)
  actual_result = side_nav_screen.settings_button.click
end

Then(/^Settings page is opened$/) do
  actual_result = settings_screen.settings_page.text
  expected_result = "Settings"
  actual_result == expected_result
end

When(/^I click on the Facebook connect button in the Settings page$/) do
  actual_result = settings_screen.facebook_connect.click
end

And(/^I click the Facebook login link$/) do
  #phone only
  settings_screen.facebook_login_link.click
end

Then(/^I connected with Facebook account successfully$/) do
  settings_screen.facebook_login_username.click
  settings_screen.facebook_login_username.send_keys("kuzya.kuzmichov@facebook.com")

  settings_screen.facebook_login_password.click
  settings_screen.facebook_login_password.send_keys("Europ2013")

  settings_screen.facebook_login_button.click
end

And(/^I fill out login fields with invalid user name$/) do
  settings_screen.facebook_login_username.click
  settings_screen.facebook_login_username.send_keys("kuzya.kuzmich@facebook.com")

  settings_screen.facebook_login_password.click
  settings_screen.facebook_login_password.send_keys("Europ2013")
end

And(/^I fill out login fields with invalid password$/) do
  settings_screen.facebook_login_username.click
  settings_screen.facebook_login_username.send_keys("kuzya.kuzmichov@facebook.com")

  settings_screen.facebook_login_password.click
  settings_screen.facebook_login_password.send_keys("Europ201")
end

Then(/^Facebook incorrect password popup returns user to the Facebook password field$/) do
  actual_result_error = settings_screen.facebook_incorrect_password.text
  expected_result_error = "Incorrect Password"
  actual_result_error == expected_result_error
  settings_screen.incorrect_password_button.click

  #Verify Facebook login page is returned
  exists { settings_screen.facebook_login_password } ? puts('true') : puts('false')
end

When(/^I click Facebook login button$/) do
  settings_screen.facebook_login_button.click
end

And(/^Facebook login error popup returns user to the Settings page$/) do
  actual_result_error = settings_screen.facebook_login_error.text
  expected_result_error = "Facebook Login Error"
  if actual_result_error == expected_result_error
    begin
      raise 'An error has occured.'
    rescue
      actual_result_text = settings_screen.facebook_login_error_text.text
      expected_result_text = "There was an error connecting to Facebook."
      if actual_result_text != expected_result_text
        fail "++++++ Facebook login error message text is incorrect ++++++++"
      end
      settings_screen.login_error_button.click
      print "I am rescue"
    end
    actual_result_page = settings_screen.settings_page.text
    expected_result_page = "Settings"
    if actual_result_page != expected_result_page
      fail "+++++++++++ Element Not Found ++++++++++++"
    end
  end
end

When(/^I click on the Google sign_in button in the Settings page$/) do
  actual_result = settings_screen.google_sign_in.click
  if actual_result != true
    fail " +++++++++ Element Not found +++++++++++++"
  end
end

Then(/^Choose account for Flixster dialog is appeared$/) do
  actual_result = settings_screen.choose_account_for_flixster.text
  expected_result = "Choose account for Flixster"
  actual_result == expected_result
end

When(/^I select an existing google account in the list$/) do
  settings_screen.google_account.click
end

Then(/^User connected with Google account successfully$/) do
  actual_result = settings_screen.google_logged_in_message.text
  expected_result = "Logged in"
  actual_result == expected_result
end

And(/^Google logged in message returns user to the Settings page$/) do
  settings_screen.login_message_button.click
  actual_result_page = settings_screen.settings_page.text
  expected_result_page = "Settings"
  actual_result_page == expected_result_page
end

And(/^Google login error popup returns user to the Settings page$/) do
  actual_result_error = wait { settings_screen.google_login_canceled.text }
  expected_result_error = "Google Login Canceled"
  if actual_result_error == expected_result_error
    begin
      raise 'An error has occured.'
    rescue
      actual_result_text = settings_screen.google_login_canceled_text.text
      expected_result_text = "This feature requires a Google connection."
      if actual_result_text != expected_result_text
        fail "++++++ Google login error message text is incorrect ++++++++"
      end
      settings_screen.login_error_button.click
      print "I am rescue"
    end
    actual_result_page = settings_screen.settings_page.text
    expected_result_page = "Settings"
    if actual_result_page != expected_result_page
      fail "+++++++++++ Element Not Found ++++++++++++"
    end
  end
end

When(/^I click on the settings privacy_policy in the Settings page$/) do
  sleep (5)
  wait { swipe(start_y: 0.0, end_y: 0.02).perform }

  actual_result = settings_screen.privacy_policy.text
  expected_result = "Privacy Policy"
  actual_result == expected_result
  settings_screen.privacy_policy.click
end

And(/^I click on the Just Once button in the Open With dialog box$/) do
  settings_screen.just_once_button.click
end

Then(/^Privacy policy web page is loaded$/) do
  sleep(5)
  actual_result = settings_screen.privacy_policy_url.text
  expected_result = "www.fandango.com/policies/privacy-policy"
  actual_result == expected_result
end

When(/^I scroll the Settings page up to the bottom$/) do
  settings_screen.location_button.swipe(start_y: 0.0, end_y: 0.02).perform
end

Then(/^I check the text at the bottom of the Settings page$/) do
  actual_result = settings_screen.footer_text.text
  expected_result = "Copyright © 2016 Fandango. All rights reserved."
  actual_result == expected_result
end

Then(/^Location Preferences screen is opened$/) do
  actual_result = settings_screen.location_preferences_screen.text
  expected_result = "Location Preferences"
  actual_result == expected_result
end

When(/^I click on the settings location in the Settings page$/) do
  settings_screen.location.click
end

When(/^I click on the settings terms and policies in the Settings page$/) do
  sleep(5)
  wait { swipe(start_y: 0.0, end_y: 0.02).perform }

  actual_result = settings_screen.terms_and_policies.text
  expected_result = "Terms and Policies"
  actual_result == actual_result
  settings_screen.terms_and_policies.click
end

Then(/^Terms and Policies web page is loaded$/) do
  actual_result = settings_screen.privacy_policy_url.text
  expected_result = "www.fandango.com/policies/terms-and-policies"
  actual_result == actual_result
end

And(/^I turn off the Rotten Tomatoes settings$/) do
  settings_screen.rotten_tomatoes_switch.click
end

When(/^I turn off the Flixster settings$/) do
  settings_screen.flixster_switch.click
end

And(/^I click on the main menu button in the action bar of the Settings page$/) do
  settings_screen.main_menu_button.click
end

And(/^I click on the settings trailer quality in the Settings page$/) do
  settings_screen.trailer_quality_button.click
end

And(/^I change trailer quality to the Standard Definition$/) do
  settings_screen.trailer_quality_SD.click
end

Then(/^Trailer quality indicator is changed to the Standard Definition$/) do
  actual_result = settings_screen.trailer_quality_indicator.text
  expected_result = "Standard Definition"
  actual_result == expected_result
end