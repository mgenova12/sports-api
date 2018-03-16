module Api::V1::BaseballsHelper
	def name_brief(first_name, last_name)
		if first_name.length > 0
			"#{first_name[0]}.#{last_name[0]}."
		end
	end
end
