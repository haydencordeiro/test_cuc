require "rubygems"
require 'selenium-webdriver'

Before do |scenario|
    $driver=  Selenium::WebDriver.for :chrome
    $wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    $driver.manage.window.maximize
    

end

After do |scenario|
    # $driver.close
end