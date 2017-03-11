
class Api
  include HTTParty

  #base_uri "#{ENV['HSQ_BASE_URL']}/healthsparq/service"
  base_uri "http://the-internet.herokuapp.com/"

  def self.visit_context_menu
    response = get('/context_menu')
    @@cookies = response.headers['Set-Cookie']
  end

  def self.point(query)
    get('/search/point', {headers: {"Cookie" => @@cookies}, query: query})
  end

end


