class Api::V1::BaseballsController < ApplicationController
  def index
  	@players = Unirest.get('http://api.cbssports.com/fantasy/players/list?version=3.0&SPORT=baseball&response_format=JSON').body["body"]["players"]
  	
  	render 'index.json.jbuilder'
  end

  def show
  	player_id = params[:id]
  	
  	@players = Unirest.get('http://api.cbssports.com/fantasy/players/list?version=3.0&SPORT=baseball&response_format=JSON').body["body"]["players"]

  	@player = @players.detect{|player| player["id"] == player_id}

  	render 'show.json.jbuilder'
  end

end
