require "rubygems"
require 'selenium-webdriver'

Before do |scenario|
    @page=Page.new
    if ENV["env"]=="local"
        Selenium::WebDriver::Chrome.driver_path = "C:\\Softwares\\chromedriver.exe"
        $driver=  Selenium::WebDriver.for :chrome
    else
        caps = Selenium::WebDriver::Remote::Capabilities.new
        caps["browserstack.debug"] = "true"
        caps['browser'] = 'Chrome'
        caps['os_version'] = '10'
        caps['resolution'] = '1920x1080'
        caps['os'] = 'Windows'
        caps['browser_version'] = 'latest-beta'
        caps['javascriptEnabled'] = 'true'
        caps['cssSelectorsEnabled'] = 'true'
        caps['name'] = 'BStack-[Ruby] Sample Test' # test name
        caps['build'] = 'BStack Build Number 1' # CI/CD job or build name
        $driver = Selenium::WebDriver.for(:remote,
        :url => "https://haydencordeiro_bGIqXD:x4dW8YzeF11YCYqwQ6Up@hub-cloud.browserstack.com/wd/hub",
        :desired_capabilities => caps)
    end
    $wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    $driver.manage.window.maximize
    end

After do |scenario|
    $driver.quit 
end