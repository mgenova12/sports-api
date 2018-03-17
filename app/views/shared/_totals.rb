    @positions_total_nums = {} #total number of each position
    @positions_total_ages = {} #total ages of each positions

    @players.each do |player|
      if player['age']
        position = player['position']
      
        if !@positions_total_nums[position]
          @positions_total_nums[position] =1 
        else 
          @positions_total_nums[position] +=1 
        end

        if !@positions_total_ages[position]
          @positions_total_ages[position] = player['age'] 
        else 
          @positions_total_ages[position] += player['age']
        end

      end
    end