class SettingsScreen < CommonScreenActions

  element :settings_page,   name: "Settings"
  element :main_menu_button,          class_name: "android.widget.ImageButton"  #name: "Open"

  element :netflix_login,    id: "net.flixster.android:id/settings_netflix_btn"
  element :facebook_connect, id: "net.flixster.android:id/settings_facebook_btn"
  element :google_sign_in,   id: "net.flixster.android:id/settings_google_btn"
  element :flixster_login,   id: "net.flixster.android:id/settings_flixster_btn"

  element :facebook_login_link,       id: "com.facebook.katana:id/login_bottom_first_link"
  element :facebook_login_username,   id: "com.facebook.katana:id/login_username"
  element :facebook_login_password,   id: "com.facebook.katana:id/login_password"
  element :facebook_login_button,     id: "com.facebook.katana:id/login_login"

  element :location_change,  name: "Location"
  element :location_button,  id: "net.flixster.android:id/settings_location_button"

  element :tell_a_friend,       id: "net.flixster.android:id/settings_tell_a_friend"
  element :rate,                id: "net.flixster.android:id/settings_rate"
  element :faqs,                id: "net.flixster.android:id/settings_faq"
  element :privacy_policy,      id: "net.flixster.android:id/settings_privacypolicy"
  element :terms_and_policies,  id: "net.flixster.android:id/settings_tos"

  element :footer_text,         id: "net.flixster.android:id/settings_footertext"

  element :location,  xpath: "//android.widget.LinearLayout[@resource-id='net.flixster.android:id/settings_location_button']"

  element :location_preferences_screen,  id: "net.flixster.android:id/title"

  element :privacy_policy_url,  id: "com.android.chrome:id/url_bar"

  # Facebook Login Error popup
  element :facebook_login_error,      id: "android:id/alertTitle"
  element :login_error_button,        id: "android:id/button1"
  element :facebook_login_error_text, id: "android:id/message"

  #Incorrect Password popup
  element :facebook_incorrect_password,        id: "com.facebook.katana:id/alertTitle"
  element :incorrect_password_button,          id: "com.facebook.katana:id/button1"


  element :choose_account_for_flixster,  id: "android:id/title"

  element :google_account,               id: "com.google.android.gms:id/account_name"
  element :google_logged_in_message,     id: "android:id/alertTitle"
  element :login_message_button,         id: "android:id/button1"

  element :google_login_canceled,        id: "android:id/alertTitle"
  element :google_login_canceled_text, id: "android:id/message"

  element :flixster_account_status,    id: "net.flixster.android:id/settings_flixster_status"

#'Open with' popup
  element :open_with_dialog,            id: "android:id/title"
  element :just_once_button,            id: "android:id/button_once"

  #Movie Ratings
  element :rotten_tomatoes_switch,    id: "net.flixster.android:id/settings_ratings_rt"
  element :flixster_switch,           id: "net.flixster.android:id/settings_ratings_flixster"

  element :trailer_quality_button,           id: "net.flixster.android:id/settings_quality_button"
  element :trailer_quality_SD,               name: "Standard Definition"
  element :trailer_quality_indicator,        id: "net.flixster.android:id/settings_quality_subtext"
end

