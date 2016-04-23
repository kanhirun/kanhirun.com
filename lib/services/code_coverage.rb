require 'simplecov'

class CodeCoverage
  def self.start!
    SimpleCov.start :rails do
      # Exit with non-zero if coverage drops below this value:
      minimum_coverage 100

      # Ignore coverage for service wrappers since they should be fairly thin
      add_filter '/lib/services'
    end
  end
end
