class WtsScreen < CommonScreenActions

  element :on_dvd_sub_tab,       name: "On DVD"
  element :upcoming_sub_tab,     name: "Upcoming"
  element :main_menu_button,     class_name: "android.widget.ImageButton"

  element :movie_collection_poster,  id: "net.flixster.android:id/movie_collection_item_poster"
  element :movie_collection_title,   id: "net.flixster.android:id/movie_collection_item_title"

  element :sort_menu,                id: "net.flixster.android:id/menuSort"
  element :sort_by_title,            name: "By Title (A-Z)"
  element :sort_by_tomatometer,      name: "By Tomatometer"
end


