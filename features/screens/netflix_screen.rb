class NetflixScreen < CommonScreenActions

  element :netflix_login_field, class_name: "android.widget.EditText"

  element :netflix_login_button, class_name: "android.widget.Button"

  element :netflix_logout_text, name: "Logout of Netflix"

  element :queue, name: "Saved In Queue"

  element :dvd_subtab, name: "DVD"

  element  :neflix_logo,    id: "net.flixster.android:id/netflix_logo"

  element  :neflix_movielist_grip,  id: "net.flixster.android:id/movielist_grip"


  def netflix_password_field
    wait { find_elements(class_name: "android.widget.EditText")[1] }
  end

  def netflix_title_displayed
    wait { find_elements(name: "Saved In Queue") if find_elements(name: "Saved In Queue") }
    find_elements(name: "Add To Netflix Queue") if find_elements(name: "Add To Netflix Queue")
    # "Not Available" if find_elements(name: "Not Availble")
  end

  def saved_in_queue
    wait { find_element(name: "Saved In Queue") }
  end


end