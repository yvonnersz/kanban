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
      redirect '/signup'
    end
  end

  get '/signup' do
    erb :signup
  end

  post '/users' do
    if !params[:username].empty? && !params[:password].empty?
      @user = User.create(params)
      session[:user_id] = @user.id
      redirect "/users/#{@user.id}"
    else
      redirect '/signup'
    end
  end

  get '/users/:id' do
    @user = User.find_by(:id => params[:id])
    erb :'/users/show'
  end

  get '/logout' do
    session.clear
    redirect '/'
  end

end
