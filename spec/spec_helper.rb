require 'bundler/setup'
require 'bourne'

RSpec.configure do |c|
  c.filter_run focus: true
  c.run_all_when_everything_filtered = true
  c.treat_symbols_as_metadata_keys_with_true_values = true
  c.mock_with :mocha
end

require 'simplecov'
SimpleCov.start

require 'rack/test'
require 'webmock/rspec'
require 'omniauth-cas'

OmniAuth.config.logger = Logger.new( '/dev/null' )
