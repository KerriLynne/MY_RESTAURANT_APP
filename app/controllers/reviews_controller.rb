class ReviewsController < ApplicationController
    require "pry"

    get '/reviews' do
        @reviews = current_user.reviews
        erb :"/reviews/index"
    end

    # get '/reviews/new' do
    #     erb :"/reviews/new"
    # end

    get 'reviews/:id' do
        if session[:user_id]
            @reviews = Review.find_by(id:params[:id]) #added
            erb :"/reviews/show"
        else
            redirect "/"
        end
    end

end