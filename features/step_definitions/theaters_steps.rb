And(/^I select theater in the Nearby list and click on its pipe_menu$/) do
  theaters_screen.theater_pipe_menu.click
end

When(/^I chose Add favorite menu item$/) do
  theaters_screen.add_favorite_pipe_menu.click
end

Then(/^I verify that favorite theater is marked with star icon$/) do
  theaters_screen.favorite_theater_star_icon.click
end

And(/^I check duplicate theaters in the list$/) do
  array_ids = []
  array_titles = []

  array_ids = find_elements(class: "android.widget.LinearLayout")
  array_ids.each do |element|
    find_element(class: "android.widget.LinearLayout")
    array_titles.push(element["name"])
  end
  find_duplicates(array_titles)
end

And(/^I swith to the By Name list$/) do
  theaters_screen.by_name_sub_tab.click
end
