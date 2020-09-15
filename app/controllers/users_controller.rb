class UsersController < ApplicationController

    get '/signup' do
        erb :"/users/signup"
    end

    post '/users' do
        if params[:password] == params[:password_confirm]
            params.delete(:password_confirm)
            user = User.create(params)
            session[:user_id] = user.id
            redirect "/restaurants"
        else
            redirect "/signup"
        end
    end

end