require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.ruby_opts << '-rtest_helper'
  t.test_files = FileList['test/test*.rb']
  t.verbose = true
end

task default: :test
