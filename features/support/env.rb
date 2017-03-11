#require 'rspec'
require 'httparty'
#require 'json'

$DEBUG = true

class ApiWorker
  include HTTParty

  #base_uri "#{ENV['HSQ_BASE_URL']}/healthsparq/service"
  base_uri "http://the-internet.herokuapp.com/"

  def self.visit_context_menu
    response = get('/context_menu')
  end

  def self.shifting_content
    get('/shifting_content')
  end

end

