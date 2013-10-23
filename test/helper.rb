Bundler.require(:default, :test)

require 'simplecov'
SimpleCov.start do
  add_filter "/test/"
  add_filter "/minitest/"
end

ENV["APP_ENV"] = "test"

require File.expand_path('app/app')

require "minitest/autorun"
require "minitest/should"
