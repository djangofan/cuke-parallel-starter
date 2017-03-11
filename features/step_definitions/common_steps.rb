# Step definitions
dir = File.expand_path(File.join(File.dirname(__FILE__), '..', 'helpers'))
require File.join(dir, 'Api')

Given(/^I am on the internet$/) do
  HsqApi.visit_context_menu
end

