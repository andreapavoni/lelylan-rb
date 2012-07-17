require 'bundler'
Bundler::GemHelper.install_tasks

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

task :test => :spec
task :default => :spec

namespace :doc do
  require 'yard'
  YARD::Rake::YardocTask.new do |task|
    task.files   = ['README.md', 'CHANGELOG.md', 'lib/lelylan/client/**/*.rb']
    task.options = [
      '--plugin', 'yard-tomdoc',
      '--markup-provider', 'redcarpet',
      '--markup', 'markdown',
      '--output-dir', 'doc/yard'
    ]
  end
end
