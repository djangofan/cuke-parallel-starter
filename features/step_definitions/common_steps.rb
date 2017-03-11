# Step definitions

require File.expand_path(File.dirname(__FILE__) + "/../helpers/ApiWorker")

Given(/^I am on the internet$/) do
  ApiWorker.visit_context_menu
end

