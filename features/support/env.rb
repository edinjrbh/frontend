require "capybara/cucumber"
require "selenium-webdriver"

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 60
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :firefox,
    desired_capabilities: Selenium::WebDriver::Remote::Capabilities.firefox(marionette: false)
  )
end
