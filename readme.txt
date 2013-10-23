Welcome to RASK, the Rake Application Starter Kit

To start using this repo:

1) fork this repo
2) clone it
3) delete the .git directory
4) type git init . (initializing a fresh repo)
5) change the name of the directory
6) (optionally) connect it to a github repo following their wonderful instructions.

If I were 15% smarter and 33% less lazy, I'd build a rails-like generator that did that kind of stuff for you... but I'm building this for me, not you.  You're welcome to use it, just remember that valid complaints must be accompanied by a pull request.  Nice questions will be politely answered, and helpful suggestions will be considered.


What is this thing? Why would I use it?

You'd be surprised how often I've solved a compelling business problem with a rake task that talks to a database, extracts information from salesforce, sends an email, checks for a file in a directory, or some other very automatable task, then scheduled it to run periodically with cron.

While its easy to start a project with an empty directory and a 'bundle init', I found myself often building the same (or similar) directory structure, including several commons gems, etc.  Worse, because I built it from scratch several times, each project had its own peculiarities.

I created this "Rake Application Starter Kit" to have a common base for building these kinds of applications.  A common way to respect the notion of 'environments', a common initialization structure, testing strategy, logging, and other project conveniences.


Getting Started:

bundle install and then run 'rake -T'.  You'll see a couple of tasks that show some simple uses.  First, the test task runs whatever unit tests you've written.  Second, the 'hello' task instantiates the application, prints hello, logs, and prints a few other things to show the configuration of the framework. There may be several other examples depending on how
ambitious I've been


Supporting Different Environments:

When you ran that last task, it told you it was running in the development environment. you can run in production like this:

RAKE_ENV=production rake hello

now that you've run it twice in two different environments, go look in the log folder.  cat out the values of the two logs. Go look at the Application#hello method to see the logging line that output the one message to development.

Environments are supported in one of two places, just like rails.

First, each environment has its own ruby file in config/environments.  If you want to create a new environment, you can simply create an empty file here (for instance, we often create a staging.rb file).

Second, if you just need configuration data for a new feature, you can add it to a yml file under config.  Any yml file you add here will have its values by environment available at Global.<filename>.<propertyname>/  This is courtesy of the very cool 'Global' gem.

To support each environment, you can also add a group to the Gemfile.  Any group with the current environment name will be automatically loaded.


Environment Key
If you don't like the name RAKE_ENV, you can change it in one spot.  Perhaps you want to have several apps coexisting, or make the key name MYCOOLAPP_ENV, or something similar... just open the app/environment_key.rb file and change it.


Logging

We've already seen there is an Application.logger that we can call the standard 'info', 'debug', 'warn', 'error' kinds of methods on.  the config/logging.yml file controls the filename and logging level for each environment.


Rake Tasks

Adding your own rake tasks is the point of this whole exercise, but we like the rake tasks to be as thin as possible (they are a pain to test otherwise).  Add them to the app/lib/tasks directory, ideally one task or namespace per file.

By default we load up the gems, but don't do any environment initialization, so your rake tasks can load quickly if you need them to.  If you need the bootstrapped environment, yaml files parsed, etc. then make your rake task dependent on the environment task (look at the 'hello' task as an example).

Ideally, your rake task should simply instantiate the application object and call a method (or orchestrate the calling of several methods).  This way, all your business logic is pushed into the application and other classes where you can properly write tests.  Again, take a look at the 'hello' task as an example.


Directory structure

As you need them, created specialized directories under 'app'.  Youll probably need a 'models' directory soon.  If you're doing ActionMailer, you might need a 'views' and 'mailers' directory as well.  Once you add the directory, check out the 'require_all' line in Application.rb, uncomment it, and/or add your own.

Progress Bars

Command line apps sometimes take time to do things. run 'rake progress' to see the Ruby_ProgressBar library in action.


Testing

Test all the F#$&*% time!  As a long-time fan of shoulda, I have it set up to look like that.  But all of minitest is at your disposal for specs, mocking, etc.  Really, you should be using minitest... its minimal yet does everything, and doesn't have a big scary metacodebase like some other popular choices these days.
Have fun!


Comments in the Codebase

This whole thing is meant to be yours.  No, really... there aren't supposed to be any
files that are off-limits for you to edit.  Once you have your project, you own everything!

There are comments littered throughout the codebase that explain what I was thinking as
I wrote this.  Please, I encourage you to dive in, figure it out, and change anything
you want.


Console

Want to play around with a console with your complete environment and app loaded and ready to poke at?

from the project root, just type 'bundle console'

when the console opens up, run:

require File.expand_path 'app/app'

your application will load, bootstrap will run, and everything will be at your fingertips, ready to poke at.


Sample Project

I have a sample project, but I'm not ready to publish it yet.  Check back to see if I've published it yet.  I also have a screencast in the works that shows how to set this up to use ActionMailer with your gmail account.


License

RASK Is released under the MIT License:
http://opensource.org/licenses/MIT

Individual Gems are copyright their respective authors, and may be released under a different license.  Links to all gems have been provided in comments in the Gemfile.
