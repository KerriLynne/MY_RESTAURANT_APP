class ReviewsController < ApplicationController
    require "pry"

    get '/reviews' do
        @reviews = current_user.reviews
        erb :"/reviews/index"
    end

    get '/reviews/new' do
        erb :"/reviews/new"
    end

    get '/reviews/:id' do
        # binding.pry
        if session[:user_id]
            @review = Review.find_by(id:params[:id]) #added
            erb :"/reviews/show"
        else
            redirect "/"
        end
    end

    post '/reviews' do
        review = current_user.reviews.create(params[:review]) ##only if it's nested under another hash
        # restaurant = Restaurant.create(params[:restaurant])
        redirect "/reviews/#{review.id}"
    end

end