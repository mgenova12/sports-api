class Api::V1::BaseballsController < ApplicationController
  def index
  	@baseball_players = Unirest.get('http://api.cbssports.com/fantasy/players/list?version=3.0&SPORT=baseball&response_format=JSON').body["body"]["players"]
  	
  	render 'index.json.jbuilder'
  end

  def show
  	player_id = params[:id]
  	
  	@baseball_players = Unirest.get('http://api.cbssports.com/fantasy/players/list?version=3.0&SPORT=baseball&response_format=JSON').body["body"]["players"]

  	@baseball_player = @baseball_players.detect{|player| player["id"] == player_id}

  	render 'show.json.jbuilder'
  end

end
