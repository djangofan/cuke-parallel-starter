require 'rspec/core/rake_task'
require 'parallel_cucumber'
require 'rake/clean'

@success = true
CLEAN.include("reports/**/junit*")
CLEAN.include("reports/**/TEST*.xml")
CLEAN.include("reports/**/*.html")
CLEAN.include("*.log")

task :test_parallel do
  ENV['OUT_DIR'] = 'reports/tests'
  FileUtils.mkpath(ENV['OUT_DIR'])
  ENV['TEST_RUNNER'] = 'cucumber_parallel'
  Rake::MultiTask["run_#{ENV['TEST_RUNNER']}"].execute
end

task :test_inline do
  ENV['OUT_DIR'] = 'reports/tests'
  FileUtils.mkpath(ENV['OUT_DIR'])
  ENV['TEST_RUNNER'] = 'cucumber_inline'
  Rake::Task["run_#{ENV['TEST_RUNNER']}"].execute
end

task :run_cucumber_parallel do
  begin
    # built-in cucumber report formatters are not thread safe
    # use https://github.com/rajatthareja/ReportBuilder
    @result = system "parallel_cucumber features -o \"--format pretty --profile parallel_reports\" -n 10"
  ensure
    @success &= @result
  end
end

task :run_cucumber_inline do
  begin
    #@result = system "cucumber -r features --format html --out \"#{ENV['OUT_DIR']}/index.html --format progress\""
    @result = system "cucumber -r features"
  ensure
    @success &= @result
  end
end

