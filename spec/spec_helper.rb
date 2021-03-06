# encoding: UTF-8
require 'bundler/setup'

require 'rspec/core'
require 'bzip2'


RSpec.configure do |config|
  config.color_enabled = true
end

# back-port 1.9 method so the tests will pass in 1.8 as well
if RUBY_VERSION.include?("1.8")
  class String
    def getbyte(idx)
      self[idx]
    end
  end
end