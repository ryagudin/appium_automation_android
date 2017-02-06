class BoxOfficeMobScreen < CommonScreenActions

  element :want_to_see_button,     id: "net.flixster.android:id/md_rate_wts"
  element :not_interested_button,  id: "net.flixster.android:id/md_rate_ni"
  element :add_rating_button,      id: "net.flixster.android:id/md_rate_add"

  element :movie_poster,           id: "net.flixster.android:id/md_poster"
  element :hero_trailer,           id: "net.flixster.android:id/md_hero_trailerbg"

  element :movie_name,             id: "net.flixster.android:id/md_moviename"

  element :netflix_icon,                name: "Netflix"
  element :amazon_instant_video_icon,   name: "Amazon Instant Video"

  element :show_more_reviews_button,    id: "net.flixster.android:id/md_loadreviews_rt"
  element :critic_reviews_page,         name: "Critic Reviews"
  element :critics_list,                 id: "net.flixster.android:id/critic_namesource"

  element :view_all_videos_button,       id: "net.flixster.android:id/horiz_photos_more"
  element :video_clips_list,             id: "net.flixster.android:id/clip_text"

  element :view_all_photos_button,       name: "View All Photos"
  element :photo_album,                  id: "net.flixster.android:id/photo_gallery_gridview"

  element :movie_trailer_play_button,          id: "net.flixster.android:id/md_hero_playtrailer"
  element :movie_trailer_play_button_tablet,   id: "net.flixster.android:id/md_trailer_play"

  element :views_trailer_tablet,               id: "net.flixster.android:id/clip_image"
end
