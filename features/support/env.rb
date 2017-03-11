#require 'rspec'
require 'httparty'
require 'json'
require 'pp'
#require 'rsolr'
#require 'open-uri'
#require 'nokogiri'

$DEBUG = true


class ApiWorker
  include HTTParty

  #base_uri "#{ENV['HSQ_BASE_URL']}/healthsparq/service"
  base_uri "http://the-internet.herokuapp.com/"

  def self.visit_context_menu
    response = get('/context_menu')
    #@@cookies = response.headers['Set-Cookie']
  end

  def self.shifting_content
    get('/shifting_content')
    #@@cookies = response.headers['Set-Cookie']
  end

end

