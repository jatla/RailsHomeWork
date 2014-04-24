class PagesController < ApplicationController

	def home
		render "public/home.html.erb", layout: false
	end
end
