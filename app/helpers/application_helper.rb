module ApplicationHelper

	def average_position_age_diff(pos, age)	
		positions_total_nums = {} #total number of each position
		positions_total_ages = {} #total ages of each positions
		player_num = nil  #total number for that players postion
		player_age = nil  #total ages for that players position
		position_average = nil

		return nil if !age  

		@baseball_players.each do |player|
			position = player['position']
			if player['age']
			
				if !positions_total_nums[position]
					positions_total_nums[position] =1 
				else 
					positions_total_nums[position] +=1 
				end

				if !positions_total_ages[position]
					positions_total_ages[position] = player['age'] 
				else 
					positions_total_ages[position] += player['age']
				end

			end
		end

		positions_total_nums.each do |k,v|
			if pos == k 
				player_num = v 
			end
		end

		positions_total_ages.each do |key,value|
			if pos == key
				player_age = value
			end
		end

		if player_age && age
			position_average = player_age / player_num
			age - position_average
		end
	end

end
