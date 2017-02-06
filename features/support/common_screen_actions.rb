#this class is used to define "common" functions that can be applied to any screen
#click, swipe, find_element, etc passed to this class



class CommonScreenActions

  App.register_page_object(self)

  def self.inherited(screen)
    App.register_page_object(screen)
  end

  def self.element(name, finder)
    define_method(name) do
      begin
        wait { driver.find_element(finder) }
      rescue => e
        raise e, "#{name} cannot be found using #{finder}"
      end
    end
  end

  def wait_for_element_displayed(timeout = 10, &block)
    wait_for(timeout) { yield.displayed? }
  end

  def wait_for_element_enabled(timeout = 10, &block)
    wait_for(timeout) { yield.enabled? }
  end

  def wait_for_element_exists(timeout = 10, &block)
    wait_for(timeout) { yield }
  end

  def wait_for_element_not_exists(timeout = 10, &block)
    result = wait_for(timeout) { element_exists? { yield }==false }
    if result == nil
      raise "Element still exists"
    end
  end


  def wait_for(timeout = 10, &block)
    @result=nil
    end_time = Time.now.to_i + timeout
    until Time.now.to_i > end_time
      begin
        @result = with_reduced_timeout { yield }
        return @result if @result
      rescue Selenium::WebDriver::Error::NoSuchElementError
        nil
      end
    end
    if @result == nil || @result == false
      raise "Timeout exceeded, block not succeeded"
    elsif @result == true
      return true
    end
  end


  def element_exists?(&block)
    with_reduced_timeout do
      begin
        result = yield
        return true if result
      rescue
        return false
      end
    end
  end

  private

  def with_reduced_timeout(&block)
    driver.manage.timeouts.implicit_wait = 1
    result = yield
    driver.manage.timeouts.implicit_wait = DEFAULT_TIMEOUT
    result
  end


  def clear_search_field
    "This is just an example"
  end

end

#########################################    Add Custom Methods Below       ###############################
###########################################################################################################

def generate_random_email
  # random_number = rand(1000000 .. 9000000)
  random_number = Time.now.getlocal.to_s.delete "- :"
  "ruslan.yagudin+#{random_number}@flixster-inc.com"
end

def fname
  fnames = ["Adam", "Benjamin", "Caleb", "Daniel", "Frank", "Gideon", "John", "Pavel", "Ellen", "Albert"]
  name = fnames[rand(10)]
  return name
end

def lname
  lnames = ["Brooks", "West", "Burrell", "O'Neill", "DeGeneres", "MacLane", "Hall", "Wilton", "Adamthwaite", "Utgoff"]
  name = lnames[rand(10)]
  return name
end

def app_restart
  press_keycode(4)
  press_keycode(4)
  press_keycode(187)
  wait { find_element(name: "Flixster").click }
  sleep 4
end

def scroll_to_element_in_list (name)

  4.times { Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.2, end_x: 0.5, end_y: 0.8, duration: 600).perform }

  current_screen = get_source
  previous_screen = ""

  until (exists { find_element(name: name) })||(current_screen == previous_screen) do
    Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.7, end_x: 0.5, end_y: 0.3, duration: 400).perform
    previous_screen = current_screen
    current_screen = get_source
  end

  unless exists { find_element(name: name) }
    fail(">>>> Element with name < #{name} > is Not Found. <<<< ")
  end
end

  def check_list_elements(list_id)
    array_titles = []

    array_ids = find_elements(id: list_id)
    array_ids.each do |element|
      find_element(id: list_id)
      array_titles.push(element["name"])
    end
    array_titles
    print "+++++++++ Elements in the list:  #{array_titles} ++++++++++++"
    list_size = array_titles.size()
    print "\n +++++++++++ Number of elements in the list: #{list_size} ++++++++++"
  end

  def find_duplicates(array_titles)
    array_titles.find_all { |x| array_titles.count(x) > 1 }.uniq
  end

