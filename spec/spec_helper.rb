require 'walletone'
require 'fabrication'
require 'ffaker'
require 'pry'
require "codeclimate-test-reporter"
require 'webmock/rspec'

CodeClimate::TestReporter.start

Dir["./spec/support/**/*.rb"].sort.each { |f| require f}

RSpec.configure do |config|
  config.order = :random

  config.before(:all) do
    Walletone.logger.level = Logger::FATAL
  end
end
