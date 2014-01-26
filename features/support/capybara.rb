require "capybara/cucumber"
require "capybara-webkit"
require "capybara/rspec"

Capybara.app = Rack::Builder.parse_file(File.expand_path("../../../config.ru", __FILE__)).first    

Capybara.default_driver = :webkit
