require 'rubygems' if RUBY_VERSION < '1.9'
require 'rake'
require 'rake/clean'
require 'rake/testtask'
require 'bundler/gem_tasks'
require 'rcov/rcovtask'

begin
  require 'rake/rdoctask'
rescue
  require 'rdoc/task'
end

Rake::RDocTask.new do |rdoc|
  files =['*.markdown', 'lib/**/*.rb']
  rdoc.rdoc_files.add(files)
  rdoc.main = "README.markdown" # page to start on
  rdoc.title = "serradura/stringub_commons Docs"
  rdoc.rdoc_dir = 'doc/rdoc' # rdoc output folder
  rdoc.options << '--line-numbers'
end

namespace :test do
  Rake::TestTask.new do |t|
    t.test_files = FileList['test/**/*.rb']
    t.name = 'all'
  end
end

def run_coverage(files)
  rm_f "coverage"
  rm_f "coverage.data"

  # turn the files we want to run into a  string
  if files.length == 0
    puts "No files were specified for testing"
    return
  end

  files = files.join(" ")

  exclude = '--exclude "usr/*"'

  rcov = "rcov -Ilib:test --sort coverage --text-report #{exclude} --aggregate coverage.data"
  cmd = "#{rcov} #{files}"
  sh cmd
end

namespace :test do
  desc 'Measures test coverage'
  task :rcov do
    run_coverage Dir["test/**/*.rb"]
  end
end

