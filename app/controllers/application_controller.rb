require './config/environment'
require 'sinatra/base'
require 'sinatra/flash'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views' # Shows Sinatra where the views are.
    enable :sessions
    set :session_secret, "kanban" # An extra security feature.
    register Sinatra::Flash
  end

  get "/" do
    erb :welcome
  end

  helpers do
    def current_user
      @current_user ||= User.find_by(:id => session[:user_id])
    end

    def logged_in?
      !!current_user
    end
  end

end
