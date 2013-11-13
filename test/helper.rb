Bundler.require(:default, :test)
require File.expand_path('app/environment_key')

require 'simplecov'
SimpleCov.start do
  add_filter "/test/"
  add_filter "/minitest/"
  add_filter "/vendor/"
end

ENV[ENVIRONMENT_KEY] = "test"

require File.expand_path('app/app')

require "minitest/autorun"
require "minitest/should"
