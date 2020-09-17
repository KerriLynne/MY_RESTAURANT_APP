class RestaurantsController < ApplicationController
    require "pry"

    # get '/restaurants' do
    #     @restaurants = current_user.restaurants
    #     erb :"/restaurants/index"
    # end

    get '/restaurants' do
        @restaurants = Restaurant.all
        erb :"/restaurants/index"
    end

    get '/restaurants/new' do
        erb :"/restaurants/new"
    end

    post '/restaurants' do
        restaurant = current_user.restaurants.create(params[:restaurant]) ##only if it's nested under another hash
        review = restaurant.reviews.first
        review.update(params[:review])
        redirect "/restaurants/#{restaurant.id}"
    end

    get '/restaurants/:id' do
        # binding.pry
        if session[:user_id]  #need to take this out to see all user reviews?
            find_restaurant
            @review = Review.find_by(restaurant_id: params[:id]) #added
            erb :"/restaurants/show"
        else
            redirect "/"
        end
    end

    get "/restaurants/:id/edit" do
        find_restaurant
        @review = Review.find_by(restaurant_id: params[:id])
        # @review = Review.find_by(id:params[:id])
        erb :"/restaurants/edit"
    end

    patch "/restaurants/:id" do
        find_restaurant
        if current_user.id = @restaurant.user_id 
           
            @restaurant.update(params[:restaurants])  
            @review = Review.find_by(restaurant_id: params[:id])
            redirect "/restaurants/#{@restaurant.id}"
        end
    end

    delete "/restaurants/:id" do
        find_restaurant
        @restaurant.destroy
        redirect "/restaurants"
    end

    private

    def find_restaurant
        @restaurant = Restaurant.find_by(id:params[:id])
    end
end