class DvdMobScreen < CommonScreenActions

  element :now_playing_sub_tab,         name: "Now Playing"
  element :wts_button,                  id: "net.flixster.android:id/md_rate_wts"
  element :main_menu_button,            class_name: "android.widget.ImageButton"

  element :movie_title,                 id: "net.flixster.android:id/md_moviename2"
  element :movie_title_tablet,          id: "net.flixster.android:id/md_moviename"

  element :rating_button,               id:"net.flixster.android:id/md_rate_add"


end
