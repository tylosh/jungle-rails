class ReviewsController < ApplicationController
    
    def new
        @review = Review.new
    end

    
    def create
        raise "Yay, I'm here!"
      end

  end