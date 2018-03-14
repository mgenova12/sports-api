class PlayersController < ApplicationController
  def index
  	@baseball = Unirest.get('http://api.cbssports.com/fantasy/players/list?version=3.0&SPORT=baseball&response_format=JSON').body["body"]["players"]
  	@football = Unirest.get('http://api.cbssports.com/fantasy/players/list?version=3.0&SPORT=football&response_format=JSON').body
  	@basketball = Unirest.get('http://api.cbssports.com/fantasy/players/list?version=3.0&SPORT=basketball&response_format=JSON').body
  end
end
