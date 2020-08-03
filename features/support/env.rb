require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
    # config.default_driver = :selenium_chrome
    config.default_driver = :selenium #to test with firefox
    config.app_host = "http://localhost:8080"
end