class RatingScreen < CommonScreenActions

  element :on_dvd_sub_tab,   name: "On DVD"

  element :rate_bar,         id: "net.flixster.android:id/rate_bar"

  element :add_review_field, id: "net.flixster.android:id/rate_review"

  element :save_button,      id: "net.flixster.android:id/menuSave"

  element :movie_title,        id: "net.flixster.android:id/md_moviename"
  element :movie_title_tablet, id: "net.flixster.android:id/movie_collection_item_title"

  element :rate_change_button,  id: "net.flixster.android:id/md_rate_change"

end
