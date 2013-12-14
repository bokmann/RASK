# These comments aren't meant for this file, these are
# 'cliff's notes' for something you can add to the
# #.irbrc in your home directory.  This makes irb
# load a project-specific .irbrc file.
#
# def load_irbrc(path)
#   return if (path == ENV["HOME"]) || (path == '/')
#   load_irbrc(File.dirname path)
#   irbrc = File.join(path, ".irbrc")
#   load irbrc if File.exists?(irbrc)
# end
# other ruby code in your .irbrc
# load_irbrc Dir.pwd # probably should stay at the bottom
# see: http://samuelmullen.com/2010/04/irb-global-local-irbrc/
#
require File.expand_path 'app/app'

# If pry is available, lets kick that off...
begin
  Pry.start || exit
rescue NameError
  # just using irb - no pry
end
