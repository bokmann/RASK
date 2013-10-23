require 'rubygems'
require 'bundler'

require File.expand_path('app/environment_key')

environment = ENV[ENVIRONMENT_KEY] || "development"

Bundler.require(:default, environment.to_s)

require_all File.expand_path('app/lib/tasks')