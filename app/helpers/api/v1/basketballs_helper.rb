module Api::V1::BasketballsHelper
	def basketball_name_brief(first_name, last_name)
		if first_name.length > 0
			"#{first_name} #{last_name[0]}."
		end
	end
end
