require 'simplecov'

class CodeCoverage
  def self.start!
    SimpleCov.start :rails do
      minimum_coverage 100
    end
  end
end
