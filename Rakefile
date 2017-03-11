require 'rspec/core/rake_task'
require 'parallel_cucumber'
require 'rake/clean'
require 'report_builder'
load 'report_builder.rake'

ENV['OUT_DIR'] = 'reports/tests'
FileUtils.mkpath(ENV['OUT_DIR'])

@success = true
CLEAN.include("reports/**/junit*")
CLEAN.include("reports/**/TEST*.xml")
CLEAN.include("reports/**/*.html")
CLEAN.include("reports/**/*.json")
CLEAN.include("*.log")

task :test_parallel do
  ENV['TEST_RUNNER'] = 'cucumber_parallel'
  Rake::MultiTask["run_#{ENV['TEST_RUNNER']}"].execute
end

task :test_inline do
  ENV['TEST_RUNNER'] = 'cucumber_inline'
  Rake::Task["run_#{ENV['TEST_RUNNER']}"].execute
end

task :run_cucumber_parallel do
  begin
    #@result = system "parallel_cucumber features -o --format json --out \"#{ENV['OUT_DIR']}/index.html\" --format pretty --profile parallel_reports -n 20"
    @result = system "parallel_cucumber features -o \"--profile parallel_reports\" -n 20"
  ensure
    @success &= @result
  end
end

task :run_cucumber_inline do
  begin
    @result = system "cucumber -r features --format html --out \"#{ENV['OUT_DIR']}/index.html\" --format progress"
  ensure
    @success &= @result
  end
end

