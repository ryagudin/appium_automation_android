class DvdScreen < CommonScreenActions

  element :on_dvd_sub_tab,              name: "On DVD"

  element :on_netflix_sub_tab,          name: "On Netflix"


  def first_movie
 #   wait { find_elements(id: "net.flixster.android:id/qa_movielist_item")[0] }
    wait { find_element(xpath: "//android.widget.LinearLayout[@resource-id ='net.flixster.android:id/qa_movielist_ll1']")}
  end

end