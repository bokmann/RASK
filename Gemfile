source "https://rubygems.org"

ruby '1.9.3'

# https://github.com/jimweirich/rake
# Thanks Jim!
gem 'rake'

# https://github.com/railsware/global
# and great backstory: http://railsware.com/blog/2013/10/16/rails-configuration-in-the-proper-way
gem 'global'

# https://github.com/jarmo/require_all
gem 'require_all'

# https://github.com/jfelchner/ruby-progressbar
gem 'ruby-progressbar'

# https://github.com/rails/rails/tree/master/activesupport
# There is a bunch of neat stuff in activesupport usable as application components.
gem "activesupport"
gem "tzinfo"

# we use actionmailer with rask a lot
#gem "actionmailer"

# same with business_time
#gem "business_time"

# uncomment if you are going to schedule tasks with cron
#gem 'whenever'

# you can use environment-specific gemsets and
# they will be automatically loaded
group 'development' do
  # https://github.com/michaeldv/awesome_print
  gem "awesome_print"
end

group 'test' do
  # https://github.com/seattlerb/minitest
  gem "minitest"
  # https://github.com/citrus/minitest_should
  gem 'minitest_should'
  # https://github.com/colszowka/simplecov
  gem 'simplecov', :require => false
end

group 'production' do
end


# Occasionally, since we build this for backoffice environments, we
# get to sneak ruby into the enterprise hitching a ride with JRuby.
# if thats the case, there are occasionally gems that are custom
# depending on the ruby platform.  A little-known configuration
# option with Bundler lets you specify which gems to use where.
#
# RMagick is one such example.  Hell, I'd rather run on JRuby
# than have to install ImageMagick anyway!
# platforms :ruby do
#   # http://rmagick.rubyforge.org/
#   gem "rmagick"
# end
#
# platforms :jruby do
#   # http://code.google.com/p/rmagick4j/
#   gem "rmagick4j"
# end