class UsersController < ApplicationController

    get '/signup' do
        erb :"/users/signup"
    end

    post '/users' do
        if params[:password] == params[:password_confirm] 
            params.delete(:password_confirm)
            user = User.new(params)
            if user.save
                session[:user_id] = user.id
                redirect "/restaurants"
            else
                @errors = user.errors.full_messages
                erb :"/users/signup"
            end
        else
            redirect "/signup"
        end
    end

end