class ReviewsController < ApplicationController
    require "pry"

    get '/reviews' do
        @reviews = current_user.reviews
        erb :"/reviews/index"
    end

    # get '/reviews/new' do
    #     @review = Review.find_by(restaurant_id: params[:id]) 
    #     erb :"/reviews/#{@review.id}/new"
    # end

    get '/restaurants/:id/reviews' do
        if session[:user_id]
            @review = Review.find_by(restaurant_id: params[:id])
            @restaurant = Restaurant.find_by(id:params[:id])
            erb :"/reviews/new" 
        else
            redirect "/"
        end
    end

    post '/reviews/:restaurant_id' do
        review = current_user.reviews.create(params[:review])
        review.update(restaurant_id:params[:restaurant_id])
        redirect "/restaurants/#{review.restaurant_id}"
    end

    get '/reviews/:id/edit' do
        find_restaurant
        @review = Review.find_by(id: params[:id])
        @restaurant = @review.restaurant
        erb :"/reviews/edit"
    end


    patch "/reviews/:id/edit" do
        @review = Review.find_by(id: params[:id])
        if current_user.id = @review.user_id 
          
            @review.update(params[:review])  
            redirect "/restaurants/#{@review.restaurant.id}"
        end
    end


    delete "/reviews/:id" do
        review = Review.find_by(id: params[:id])
        review.destroy
        redirect "/reviews"
    end

    private

    def find_restaurant
        @restaurant = Restaurant.find_by(id:params[:id])
    end

end