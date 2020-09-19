class ReviewsController < ApplicationController
    require "pry"

    get '/reviews' do
        # binding.pry
        @reviews = current_user.reviews
        @restaurant = Restaurant.find_by(id:params[:id])
        # @restaurants = current_user.restaurants
        erb :"/reviews/index"
        # redirect "/restaurants/#{@restaurant.id}"
    end

    get '/reviews/new' do
        @review = Review.find_by(restaurant_id: params[:id]) #added
        erb :"/reviews/#{@review.id}/new"
    end

    get '/restaurants/:id/reviews' do
        if session[:user_id]
            @review = Review.find_by(restaurant_id: params[:id])
            @restaurant = Restaurant.find_by(id:params[:id])
            # @review = Review.find_by(id:params[:id]) 
            # erb :"/reviews/show"  #update
            erb :"/reviews/new" 
        else
            redirect "/"
        end
    end

    # post '/reviews' do
    #     review = current_user.reviews.create(params[:review]) ##only if it's nested under another hash
    #     # restaurant = Restaurant.create(params[:restaurant])
    #     redirect "/reviews/#{review.id}"
    # end

    post '/restaurants/:id/reviews' do
        review = current_user.reviews.create(params[:review]) ##only if it's nested under another hash
        restaurant = review.restaurant
        # redirect "/restaurants/#{restaurant.id}"
        redirect "/restaurants"
    end

    # patch "/restaurants/:id/reviews" do
    #     @review = Review.find_by(restaurant_id: params[:id])
    #     if current_user.id = @review.user_id 
           
    #         @review.update(params[:reviews])  
    #         @restaurant = Restaurant.find_by(id:params[:id])
    #         redirect "/restaurants/#{@restaurant.id}"
    #     end
    # end

end