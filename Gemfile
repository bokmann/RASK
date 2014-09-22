source "https://rubygems.org"

ruby '2.1.2'

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


# I endorse these products and/or services

# in order to use pry, check out the project's .irbrc file,
# and this blog entry about using project-level .irbrc config:
# http://samuelmullen.com/2010/04/irb-global-local-irbrc/
#gem "pry"
#gem "pry-doc"


# we use actionmailer with rask a lot
#gem "actionmailer"

# 4.business_hours.from_now
# https://github.com/bokmann/business_time
#gem "business_time"

# business time plays well with holidays.
# https://github.com/alexdunae/holidays
#gem 'holidays'

# uncomment if you are going to schedule tasks with cron
#gem 'whenever'

# instead of sending mail, preview it in your local browser
# https://github.com/ryanb/letter_opener
#gem "letter_opener"

# Wanna send alerts to someone's iPhone?
# https://github.com/augustl/ruby-prowl
#gem 'prowl'

# my company uses hipchat. Our robot monkey tells us things.
# https://github.com/hipchat/hipchat-rb
#gem 'hipchat'

# want to write something that talks to salesforce?
#
# https://github.com/heroku/databasedotcom
#gem 'databasedotcom'
# or
# https://github.com/ejholmes/restforce
#gem 'restforce'
#
# or better yet, I'm available for consulting and can torture
# salesforce enough to make it confess to anything.

# Having Redis around is a great way to cache data until you need it.
# gem 'redis'

# Seriously - the stuff that composes Rails is modular and super-cool!
# https://github.com/rails/rails/tree/master/activemodel
#gem 'active_model'

# Because sometimes, you just need to fake it till you make it
# https://github.com/emmanueloga/ffaker
#gem 'ffaker'

# This will require more documentation to explain.
# https://github.com/rails/rails/tree/master/activerecord
#gem 'active_record'
#gem 'mysql2'
#gem 'sqlite'

# There are many state machines for ruby, this is my favorite.
# https://github.com/aasm/aasm
# State machines are useful for automating office processes,
# but that is a subject for another time.
#gem 'aasm'


# Sometimes you need to get stuff over an http connection.
# Any of these will do; they all have slightly different api flavors.
# https://github.com/rest-client/rest-client
#gem 'rest-client'
# https://github.com/jnunemaker/httparty
#gem 'httparty'
# https://github.com/sparklemotion/mechanize
#gem 'mechanize'


# you can use environment-specific gemsets and
# they will be automatically loaded
group 'development' do
  # https://github.com/michaeldv/awesome_print
  gem "awesome_print"
end

group 'test' do
  # https://github.com/seattlerb/minitest
  # if I unlock this, turn breaks, and for some reason bundler
  # reverts active_support to 3.2.something.  I'm willing to
  # drop turn, wtf with active_aupport?
  gem "minitest", "4.7.5"
  # https://github.com/citrus/minitest_should
  gem 'minitest_should'
  # https://github.com/colszowka/simplecov
  gem 'simplecov', :require => false
  # https://github.com/TwP/turn
  gem 'turn'
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


# and now for a plug: Obviously, I make a living writing software;
# typically back-office integration software that does cool stuff.
# If you've read through these comments, I hope you've learned a
# useful trick or two... imagine what working with me is like!
#
# If you'd like to work with me, reach out at dbock@codesherpas.com
