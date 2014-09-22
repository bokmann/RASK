# Feel free to delete this in your projects.  This just shows you
# how to define some rake tasks and how to do some common things,
# like instantiate the app, use rake's command-line params, and
# use the built-in progress-bar library.

desc "says \"hello <name>\" - Name is optional."
task :hello, [:name] => :environment do |t, args|
  app = App.new
  name = args[:name] || "World"
  app.hello(name)
end

desc "demonstrates the progress bar"
task :progress => :environment do

  message = "calculating the mass of the Universe..."
  App.logger.info message
  puts message
  p = ProgressBar.create(:title => "Contemplating...", :total => 50)
  50.times do
    p.increment
    sleep 0.1
  end
  message = "done"
  App.logger.info message
  puts message
end

