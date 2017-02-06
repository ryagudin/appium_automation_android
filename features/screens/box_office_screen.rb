
class BoxOfficeScreen < CommonScreenActions

  element :action_bar,                      id: "net.flixster.android:id/toolbar"

  element :now_playing_sub_tab,             name: "Now Playing"
  element :upcoming_sub_tab,                name: "Upcoming"
  element :movie_item,                      class: "android.widget.LinearLayout"


  element :main_menu_button,                class_name: "android.widget.ImageButton"  #name: "Open"

  element :search_icon,                     name: "Search" #xpath: "//android.widget.TextView [@content-desc='Search']"
  element :search_for_movies_actors,        id: "net.flixster.android:id/search_edittext"


  element :see_all_button,                  id: "net.flixster.android:id/button"


  element :opening_this_week_page,          name: "Opening This Week"
  element :movies_list,                     id: "net.flixster.android:id/movielist_title"

  element :movie_pipe_menu,                 id: "net.flixster.android:id/movielist_more"
  element :wts_movie_pipe_menu,             id: "android:id/title"

  element :login_to_add_your_rating_page,   name: "Login to Add Your Rating"
  element :connect_with_facebook_button,    id: "net.flixster.android:id/loginFacebook"
  element :sign_in_with_google_button,      id: "net.flixster.android:id/loginGoogle"
  element :login_with_Flixster_button,      id: "net.flixster.android:id/loginFlixster"


  element :movies_list_footer,               id: "net.flixster.android:id/lvi_footer"
  element :movies_list_footer_title_fl,         id: "net.flixster.android:id/md_footer_title_flixster"
  element :movies_list_footer_popcorn,       id: "net.flixster.android:id/md_footer_popcorn"
  element :movies_list_footer_spilled,       id: "net.flixster.android:id/md_footer_spilled"

  element :movies_list_footer_title_rt,      id: "net.flixster.android:id/md_footer_title"
  element :movies_list_footer_rt_fresh,      id: "net.flixster.android:id/md_footer_fresh"
  element :movies_list_footer_rt,            id: "net.flixster.android:id/md_footer_rotten"

  def first_movie
   # wait { find_elements(id: "net.flixster.android:id/qa_movielist_ll1")[0] }
   wait { find_element(xpath: "//android.widget.LinearLayout[@resource-id ='net.flixster.android:id/qa_movielist_ll1']")}
  end

  element :top_box_office_movie,         name: "Top Box Office"

  element :movie_thumbnail_trailer_tablet,    id: "net.flixster.android:id/movielist_playbutton"
end






