require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views' # Shows Sinatra where the views are.
    enable :sessions
    set :session_secret, "kanban" # An extra security feature.
  end

  get "/" do
    erb :welcome
  end

end
