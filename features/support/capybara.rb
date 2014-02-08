require "capybara/cucumber"
require "capybara-webkit"
require "capybara/rspec"
require "capybara-screenshot"
require "capybara-screenshot/cucumber"

Capybara.app = Rack::Builder.parse_file(File.expand_path("../../../config.ru", __FILE__)).first    

Capybara.default_driver = :webkit

Capybara.save_and_open_page_path = File.expand_path "../../../tmp/capybara", __FILE__
