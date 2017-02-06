# This class is used to instantiate all screens in app
# Step_definitition files send screen name here

class App

  class << self

    def register_page_object(screen)
      method_name = screen.name.scan(/[A-Z][a-z]+/).map(&:downcase).join('_').to_sym
      return if self.method_defined?(method_name)

      define_method(method_name) do
        screen.new
      end
    end

  end

end