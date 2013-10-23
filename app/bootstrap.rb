# there are a million useful things in active_support,
# in particular cache and notifications... but we dont
# assume you want them.
require File.expand_path('app/environment_key')
require 'active_support/time'
require 'active_support/inflector'



# load environment-dependent config.
Global.environment = ENV[ENVIRONMENT_KEY] || "development"
Global.config_directory = "config"

# require our environment-specific stuff.
require File.expand_path(File.join('config',
                                   'environments',
                                   "#{Global.environment}.rb"))

# require the initializers.
require_all File.expand_path('config/initializers')

# design note: I have waffled back and forth as to whether the global
# initializers should run before the environment-specific one in the
# few lines above.  I've come to think that the environment-specific one
# may set some configuration that is used later in the global init,
# so this is the way it works now.  Feel free to change if your situation
# is different than mine.




# if you expand past the default directory structure, require them
# here.  These are two real world examples:
#
# require_all File.expand_path('app/models')
# require_all File.expand_path('app/mailers')