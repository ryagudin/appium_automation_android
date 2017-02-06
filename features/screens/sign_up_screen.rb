class SignUpScreen < CommonScreenActions

  element :first_name,        xpath: "//android.widget.EditText[@resource-id='fname']"
  element :last_name,         xpath: "//android.widget.EditText[@resource-id='lname']"
  element :email,             xpath: "//android.widget.EditText[@resource-id='email']"
  element :password,          xpath: "//android.widget.EditText[@resource-id='password']"
  element :confirm_password,  xpath: "//android.widget.EditText[@resource-id='confirmPassword']"
  element :continue_button,   name: "Continue"

  element :email_indicator,      xpath: "//android.view.View[@content-desc='Invalid email address']"
  element :first_name_indicator, xpath: "//android.view.View[@resource-id='firstNameWarning']"
  element :confirm_password_indicator,   xpath: "//android.view.View[@resource-id='passwordConfirmWarning']"
  element :password_indicator,   xpath: "//android.view.View[@resource-id='passwordWarning']"

  # Sign up operation completed with message
  element :sign_up_logged_in_message,       name: "You have successful logged in!"
  element :logged_in_message_button,        name: "Open Flixster App"



end


