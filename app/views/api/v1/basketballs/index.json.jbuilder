json.array! @players.each do |player|
	json.id player['id']
	json.name_brief basketball_name_brief(player['firstname'], player['lastname'])
	json.first_name player['firstname']
	json.last_name player['lastname']
	json.position player['position']
	json.age player['age']
	json.average_position_age_diff average_position_age_diff(player['position'], player['age'])
end