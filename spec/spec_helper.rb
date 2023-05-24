require "chefspec"
require "chefspec/berkshelf"

RSpec.configure do |config|
  config.log_level = :fatal
  config.platform = "debian"
  config.version = "10"

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.disable_monkey_patching!
  config.warnings = false
end
