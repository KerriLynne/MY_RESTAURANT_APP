class SessionController < ApplicationController
    require "pry"

    get '/login' do
        erb :"/session/login"
    end
    
    post '/login' do 
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect "/restaurants"
        else
            session[:error] = "Username and/or password invalid.  Try logging in again."
            redirect "/login"
        end
    end

    delete '/logout' do
        session.clear
        redirect "/"
    end



end