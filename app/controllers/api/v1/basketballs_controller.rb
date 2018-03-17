class Api::V1::BasketballsController < ApplicationController
  def index
    @players = Unirest.get('http://api.cbssports.com/fantasy/players/list?version=3.0&SPORT=basketball&response_format=JSON').body["body"]["players"]
    
    @positions_total_nums = positions_total_nums
    @positions_total_ages = positions_total_ages

    render 'index.json.jbuilder'
  end

  def show
    @players = Unirest.get('http://api.cbssports.com/fantasy/players/list?version=3.0&SPORT=basketball&response_format=JSON').body["body"]["players"]

    @positions_total_nums = positions_total_nums
    @positions_total_ages = positions_total_ages

    player_id = params[:id]
    
    @player = @players.detect{|player| player["id"] == player_id}

    render 'show.json.jbuilder'
  end

end
