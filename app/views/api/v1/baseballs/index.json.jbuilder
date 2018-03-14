
json.array! @baseball_players.each do |player|
	json.id player['id']
	# json.name_brief player
	json.first_name player['firstname']
	json.last_name player['lastname']
	json.position player['position']
	json.age player['age']
	# json.average_position_age_diff player

end







