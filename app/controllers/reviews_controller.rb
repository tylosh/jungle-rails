class ReviewsController < ApplicationController
    
    def new
        @review = Review.new
    end

    
    def create
        # create and save the review to the database
        puts '^^^^^^^^^'
        puts allowed_params
        @review = Review.create!(allowed_params)

        if @review.save
            redirect_to :back
          else
            redirect_to :back 
        end
    end


    private

    def allowed_params
        puts '*********************'
        puts params
        params.require(:review).permit(:product_id, :user_id, :rating, :description)
    end

  end