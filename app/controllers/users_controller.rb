class UsersController < ApplicationController
    require "pry"

    get '/signup' do
        erb :"/users/signup"
    end

    post '/users' do
        if params[:password] == params[:confirm_password] 
            params.delete(:confirm_password)
            params.delete("Sign Up")
            user = User.new(params)
            if user.save
                session[:user_id] = user.id
                redirect "/restaurants"
            else
                @errors = user.errors.full_messages
                erb :"/users/signup"
            end
        else
            # binding.pry
            redirect "/signup"
        end
    end

end