module ApplicationHelper
	def short_description desc
		truncate(desc, length: 80, omission: "..."){ link_to "Continue", "#" }
	end
end
