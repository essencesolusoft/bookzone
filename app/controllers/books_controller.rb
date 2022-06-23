class BooksController < ApplicationController

	def index
		@books = Book.limit(1000) 
	end
	
	def search
		starttime = Time.now
		@books =  if params[:with_elastic].present? && params[:with_elastic].eql?('true') 
			Book.search(params[:search_term]).records
		else
			Book.where("
				title ilike :search_term OR 
				author ilike :search_term OR 
				publisher ilike :search_term OR 
				genre ilike :search_term",
				search_term: "%#{params[:search_term].strip}%"
			)
		end 
		endtime = Time.now

		@time_took = (1000 * (endtime.to_f - starttime.to_f)).round(4)
		render :index
	end 
end
