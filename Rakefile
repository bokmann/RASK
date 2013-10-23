require 'rubygems'
require 'bundler'

environment = ENV["RAKE_ENV"] || "development"

Bundler.require(:default, environment.to_s)

require_all File.expand_path('app/lib/tasks')