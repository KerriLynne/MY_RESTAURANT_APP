class RestaurantsController < ApplicationController
    require "pry"


    get '/restaurants' do
        @restaurants = Restaurant.all
        erb :"/restaurants/index"
    end

    get '/restaurants/new' do
        erb :"/restaurants/new"
    end

    post '/restaurants' do
        unless restaurant = Restaurant.find_by(name: params[:restaurant][:name])
            restaurant = current_user.restaurants.new(params[:restaurant])
            if restaurant.save
                review = restaurant.reviews.create(params[:review])
                review.update(user_id: current_user.id)
            else
                redirect "/restaurants/new"
            end
        end
        redirect "/restaurants/#{restaurant.id}"
    end

    get '/restaurants/:id' do
        if session[:user_id] 
            find_restaurant
            @reviews = @restaurant.reviews
            counter = 0
            @reviews.each do |review|
                counter = review.num_rating + counter
            end
            @average = (counter.to_f/@reviews.size).round(1)
            erb :"/restaurants/show"
        else
            redirect "/"
        end
    end

    private

    def find_restaurant
        @restaurant = Restaurant.find_by(id:params[:id])
    end
end