require 'rubygems'
require 'rspec'
require 'test/unit'
require 'mocha'

RSpec::Runner.configure do |config|
  config.mock_framework =:mocha
end
