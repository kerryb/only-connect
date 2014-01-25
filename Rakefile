require "bundler"
Bundler.setup
require "guard"
require "rake/clean"

CLOBBER << FileList["public/**"]
CLEAN << FileList["log/**", "tmp/**"]

def system_or_fail command
  system command or exit! 1
end

desc "Create site in public directory"
task :default => %i[clobber test:unit test:e2e] do
  Guard.setup
  Guard.guards("copy").map(&:start) # guard:copy only sets itself up on start
  Guard.run_all
end

namespace :test do
  desc "Run unit tests"
  task :unit do
    system_or_fail "karma start config/karma/unit.coffee --no-auto-watch --single-run"
  end

  desc "Run unit tests"
  task :e2e do
    system_or_fail "karma start config/karma/e2e.coffee --no-auto-watch --single-run"
  end
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
