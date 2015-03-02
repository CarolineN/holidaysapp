class ReviewsController < ApplicationController

	def create
		@holiday = Holiday.find params[:holiday_id]
		@review = @holiday.reviews.create params[:review]
		
		@review.save
			
			respond_to do |format|
				format.html { redirect_to @holiday }
			end
	end		
	
	

end