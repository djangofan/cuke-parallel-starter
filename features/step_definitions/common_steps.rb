# Step definitions

require File.expand_path(File.dirname(__FILE__) + "/../helpers/ApiWorker")

Given(/^I am on the internet$/) do
  ApiWorker.visit_context_menu
end

Given(/^I wait for up to a second$/) do
  amt = rand
  sleep(amt*5)
  puts "Slept for " + amt.to_s + " milliseconds."
end

