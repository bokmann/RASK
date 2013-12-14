# We bootstrap before defining the app class so that the application has
# access to all of the config and initialization data.
# This works well, except for the fact that I'd love to use App.logger
# during initialization.  Perhaps the logger could be pulled out
# of App and created beforehand.
require File.expand_path('app/bootstrap')
require 'logger'


# Define our base Application Class
class App
  # The logger stuff is here for your use. Please implement some
  # good logging practices for your application.
  @@logger = Logger.new(File.expand_path(Global.logging.file))
  @@logger.level = Logger.const_get(Global.logging.level.upcase)

  def self.logger
    @@logger
  end


  # these methods are here only for the 'hello' demo. Feel free to kill them.
  def hello(name)
    message = "#{greeting} #{name}"
    @@logger.info "displaying \"#{message}\""
    puts message
  end

  def greeting
    "hello"
  end

  # The rest of this class is yours to do with as you please. It is the
  # Starting point for the bulk of the concept behind rask... add
  # methods that your rake tasks call here, use this for any orchestration
  # between other pieces of your application, but PLEASE, break your app
  # up into nice small, testable pieces and stick them in organized
  # subdirectories as mentioned in the readme.
end