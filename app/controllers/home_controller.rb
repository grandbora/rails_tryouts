class HomeController < ApplicationController
	
	def index
		@quotes = Quote.all

		render :text => @quotes.inspect

		# respond_to do |format|
		# 	format.html  index.html.erb
		# 	format.json  { render :json => @posts }
		# end
	end

	def save
		render :text => params['quote']['content']
	end
end