module ApplicationHelper
	def page_title(title)
		base_title  = 'My Games App'

		if (title.empty?)
			return base_title
		else 
			return title
		end
		
	end
end
