PROJECT_ROOT = File.expand_path('../..', __FILE__)
$:.unshift PROJECT_ROOT

require 'lib/services/code_coverage'
require_relative 'support/require_dependency'

# This must be run before application code is loaded
CodeCoverage.start!

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
