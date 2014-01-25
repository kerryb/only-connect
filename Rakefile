require "bundler"
Bundler.setup
require "guard"
require "rake/clean"
require 'cucumber'
require 'cucumber/rake/task'

CLOBBER << FileList["public/**"]
CLEAN << FileList["log/**", "tmp/**"]

def system_or_fail command
  system command or exit! 1
end

desc "Create site in public directory"
task :default => %i[clobber karma cucumber] do
  Guard.setup
  Guard.guards("copy").map(&:start) # guard:copy only sets itself up on start
  Guard.run_all
end

desc "Run karma unit tests"
task :karma do
  system_or_fail "karma start config/karma.coffee --no-auto-watch --single-run"
end

Cucumber::Rake::Task.new(:cucumber) do |t|
  t.cucumber_opts = "features --format pretty"
end

desc "Start a simple thin server for files in public directory"
task :start do
  $stderr.puts "Starting server on port 3000"
  system_or_fail "bundle exec thin start -d"
end

desc "Stop the thin server"
task :stop do
  system_or_fail "bundle exec thin stop"
end

desc "Deploy to oc.kerryb.org"
task :deploy do
  system_or_fail "rsync -avz public/ kerry_ps@ps10723.dreamhost.com:oc.kerryb.org"
end
