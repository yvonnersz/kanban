class UsersController < ApplicationController

  # The purpose of this route is to render the login page.
  get '/login' do
    erb :login
  end

  # The purpose of this route is to receive the login form.
  # Find user, authenticate user, redirect to user's landing page.
  post '/login' do
    @user = User.find_by(:username => params[:username])
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id # This logs the user in.
      redirect "users/#{@user.id}"
    else
      redirect '/failure'
    end
  end

  get '/signup' do
    erb :signup
  end

  post '/signup' do

  end

  get '/users/:id' do
    "show route"
  end

end
