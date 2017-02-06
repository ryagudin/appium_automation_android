class SideNavScreen < CommonScreenActions

  element :settings_button,      id: "net.flixster.android:id/slidingmenu_settings"

  element :netflix_queue_button, name: "Netflix Queue"

  element :box_office_button,    name: "Box Office"
  element :dvd_button,           name: "DVD"
  element :theaters_button,      name: "Theaters"

  element :main_menu_button,     class_name: "android.widget.ImageButton"

  element :login_button,         name: "Login" #id: "net.flixster.android:id/slidingmenu_button_text"
  element :signup_link,          id: "net.flixster.android:id/slidingmenu_signuptv"

  element :ratings_button,       name: "Ratings"

 # element :want_to_see_button, xpath: "//android.widget.TextView[contains(@resource-id, net.flixster.android:id/slidingmenu_button_text)]"
  element :ratings_button_tablet,      xpath: "//android.widget.Button[contains(@resource-id, net.flixster.android:id/md_rate_wts)]"



  element :slide_menu_itself,    id: "net.flixster.android:id/movielist_poster"

  def user_email_side_nav
    wait { find_element(id: "net.flixster.android:id/slidingmenu_useremail").text }
  end

  def wts_button
    wait { find_element(class_name: "android.widget.TextView").click }
    wait { find_element(xpath: "//android.widget.TextView[contains(@text, 'Want To See')]") }
  end

  def wts_button_tablet
    wait { find_element(class_name: "android.widget.TextView").click }
    wait { find_element(id: "net.flixster.android:id/slidingmenu_button_count")}
  end

  def ratings_button_tablet
    wait { find_element(class_name: "android.widget.TextView").click }
    wait { find_element(xpath: "//android.widget.TextView[contains(@text, 'Ratings')]") }
  end

  element :signup_link,     id: "net.flixster.android:id/slidingmenu_signuptv"
  element  :want_to_see_side_menu, id: "net.flixster.android:id/slidingmenu_button_text"


end