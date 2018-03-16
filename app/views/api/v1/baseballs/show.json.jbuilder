json.id @baseball_player['id']
json.name_brief name_brief(@baseball_player['firstname'], @baseball_player['lastname'])
json.first_name @baseball_player['firstname']
json.last_name @baseball_player['lastname']
json.position @baseball_player['position']
json.age @baseball_player['age']
json.average_position_age_diff average_position_age_diff(@baseball_player['position'], @baseball_player['age'])