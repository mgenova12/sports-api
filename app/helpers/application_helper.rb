module ApplicationHelper

	def average_position_age_diff(pos, age)	
		player_num = nil  #total number for that players postion
		player_age = nil  #total ages for that players position
		position_average = nil

		if age  
			@positions_total_nums.each do |position, position_name|
				if pos == position
					player_num = position_name 
				end
			end

			@positions_total_ages.each do |position, position_name|
				if pos == position
					player_age = position_name
				end
			end

			if player_age 
				position_average = player_age / player_num
				age - position_average
			end
		end
	end

end
