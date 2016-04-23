# Use `require` and specify files from the project root
#   For example, you can you require 'lib/services', 'app/models/..', etc.
PROJECT_ROOT = File.expand_path('../..', __FILE__)
$:.unshift PROJECT_ROOT

# This must be run before application code is loaded
require 'lib/services/code_coverage'
CodeCoverage.start!

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
