class PagesController < ApplicationController
	
	def show
		page = params[:id]
		if avalaible_pages.include? page
		 	render template: "pages/#{page.underscore}"
		else
			raise page.inspect
		end
	
	end
	
	private

		def avalaible_pages
			['nos-services', 'nos-technos']
		end
end