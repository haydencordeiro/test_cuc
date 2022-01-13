require "rubygems"
require 'selenium-webdriver'

Before do |scenario|
    @page=Page.new
    Selenium::WebDriver::Chrome.driver_path = "C:\\Softwares\\chromedriver.exe"
    $driver=  Selenium::WebDriver.for :chrome
    $wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    $driver.manage.window.maximize
    

end

After do |scenario|
    # $driver.close
end