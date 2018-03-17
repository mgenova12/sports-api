class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :positions_total_nums
  helper_method :positions_total_ages

  def positions_total_nums
    positions_total_nums = {} #total number of each position
    
    @players.each do |player|
      if player['age']
        position = player['position']
      
        if !positions_total_nums[position]
          positions_total_nums[position] =1 
        else 
          positions_total_nums[position] +=1 
        end

      end
    end

	positions_total_nums
  end

  def positions_total_ages
	positions_total_ages = {} #total ages of each positions

  	@players.each do |player|
      if player['age']
        position = player['position']

        if !positions_total_ages[position]
          positions_total_ages[position] = player['age'] 
        else 
          positions_total_ages[position] += player['age']
        end

      end
	end

	positions_total_ages
  end

end
