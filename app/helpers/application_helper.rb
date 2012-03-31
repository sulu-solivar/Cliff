module ApplicationHelper

	def page_header
		@page_header.presence ? @page_header : "Cliff's Hartman Model"
	end

end
