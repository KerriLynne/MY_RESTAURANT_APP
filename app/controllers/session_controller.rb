class SessionController < ApplicationController
    require "pry"

    get '/login' do
        erb :"/session/login"
    end
    
    post '/login' do 
        binding.pry
        #get the user attempting to login
        user = User.find_by(username: params[:username])
        # authenticate user with password
        if user && user.authenticate(params[:password_digest])
            # set our user session
            session[:user_id] = user.id
            redirect "/restaurants"
        else
            redirect "/session/login"
            # if valid- decide where to go
            # else redirect to login page
        end
    end

    delete '/logout' do
        session.clear
        redirect "/"
    end



end