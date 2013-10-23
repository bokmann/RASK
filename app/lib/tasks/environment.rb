# this has been pulled out to a task you can make other tasks
# depend on.  There are occasions where you might want rake tasks
# that do not run all your initializers, don't require an
# environment setting, etc... if thats the case, then don't
# depend on the environment.  This works just like Rails' rake tasks.
task :environment do
  require File.expand_path('app/app')
end