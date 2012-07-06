require 'rubygems'
require 'rspec'
require 'test/unit'
require 'mocha'

$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__), '/../lib'))

require 'clickatell'

RSpec.configure do |config|
  config.mock_framework =:mocha
end
