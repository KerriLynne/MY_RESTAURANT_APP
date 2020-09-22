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
                # binding.pry
                review = restaurant.reviews.create(params[:review])
                review.update(user_id: current_user.id)
            else
                redirect "/restaurants/new"
            end
        end
        redirect "/restaurants/#{restaurant.id}"
    end

            #check if rest gets successfully created (.valid?) or check if restaurant.save
            ## create the review and then check the review (another if statement) if review.valid? or if review.save
            # if these both didn't successfully go through redirect back to restaurants page
            #look into how you're creating this review?


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

    get "/restaurants/:id/edit" do
        find_restaurant
        @review = Review.find_by(restaurant_id: params[:id])
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