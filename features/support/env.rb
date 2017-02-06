require "selenium-webdriver"
require "appium_lib"
require "pry"
require "rspec"

def get_port
  device = ENV['DEVICE'] || "phone"
  if device == "phone_note_4"
    p "4723"
    return 4723
  elsif device == "phone_nexus_5"
    p "4726"
    return 4726
  elsif device == "phone_galaxy_s6"
    p "4727"
    return 4727
  elsif device == "tablet_galaxy_tab4"
    return 4728
  end
end

def get_udid
  device = ENV['DEVICE'] || "phone"
  if device == "phone_nexus_5"
    p "Nexus 5"
    return "097fc932255da982"
  elsif device == "phone_note_4"
    p "note_4"
    return "4100025ce41a3209"
  elsif device == "phone_galaxy_s6"
    p "Galaxy S6"
    return "04157df4f3e4a725"
  elsif device == "tablet_galaxy_tab4"
    p "Galaxy Tab4"
    return "8ac225c8"
  end
end

def caps
  {caps: {deviceName: "Samsung",
          platformName: "Android",
          port: get_port,
          app: (File.join(File.dirname(__FILE__), "..", "..", "net.flixster.android_8.2.1_os_4.1.apk")),
          appPackage: "net.flixster.android",
          #appActivity: "MainConverterActivity",
          newCommandTimeout: "3600",
          udid: get_udid,
          appium_lib: {wait: 20, debug: false},
  }}
end

Appium::Driver.new(caps)
Appium.promote_appium_methods(Object)


def launch_driver
  Appium::Driver.new(caps)
  Appium.promote_appium_methods(App)
  Appium.promote_appium_methods(CommonScreenActions)
  start_driver

end


World { App.new }