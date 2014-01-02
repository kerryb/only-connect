require "bundler"
Bundler.setup
require "guard"
require "rake/clean"

CLOBBER << FileList["public/**"]
CLEAN << FileList["log/**", "tmp/**"]

desc "Create site in public directory"
task :default => :clobber do
  Guard.setup
  Guard.guards("copy").map(&:start) # guard:copy only sets itself up on start
  Guard.run_all
end

desc "Start a simple thin server for files in public directory"
task :start do
  $stderr.puts "Starting server on port 3000"
  system "bundle exec thin start -d"
end

desc "Stop the thin server"
task :stop do
  system "bundle exec thin stop"
end
