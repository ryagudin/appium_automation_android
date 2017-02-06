class SearchScreen < CommonScreenActions

  element :search_text_field, id: "net.flixster.android:id/search_edittext"

# enable DGNS Methods Begin +++++++++++++++++++++++++

  def enable_dgns

    enable_dgns_attempt_1
    sleep 4
    # if exists { box_office_screen.now_playing_sub_tab } == true
    if exists { find_element(name: "Now Playing") }

      p ">>>> DGNS Logs ENABLED after 1st Attempt"
      return

    else
      enable_dgns_attempt_2
    end

    if exists { find_element(name: "Now Playing") }
      p ">>>> DGNS Logs ENABLED After 2nd Attempt."
      return

    else
      enable_dgns_attempt_3
    end

    if exists { find_element(name: "Now Playing") }
      p ">>>> DGNS Logs ENABLED after 3rd Attempt. Removed extra space"
      return

    else
      fail (">>>> DGNS Logs FAILED AFTER 3 ATTEMPS")
    end

  end

  def enable_dgns_attempt_1
    search_text_field.send_keys("dgns")
    hide_keyboard
    press_keycode(66)
  end

  def enable_dgns_attempt_2
    2.times { press_keycode(4) }
    # press_keycode(4)
    wait { find_element(name: "Search").click }
    wait { find_element(id: "net.flixster.android:id/search_edittext").click }
    press_keycode(32)
    press_keycode(35)
    press_keycode(42)
    press_keycode(47)
    hide_keyboard
    press_keycode(66)
  end

  def enable_dgns_attempt_3
    sleep 3
    2.times { press_keycode(4) }
    wait { find_element(name: "Search").click }
    wait { find_element(id: "net.flixster.android:id/search_edittext").click }
    press_keycode(32)
    press_keycode(35)
    press_keycode(42)
    press_keycode(47)
    hide_keyboard
    press_keycode(67)
    press_keycode(66)
  end


# Enable DGNS FINISH ^^^^^^^^^^^^^^^^^^^^^^^^^^^^

element :search_result,            id: "net.flixster.android:id/movielist_title"
end