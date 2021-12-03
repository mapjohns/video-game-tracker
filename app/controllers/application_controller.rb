require './config/environment'
class ApplicationController < Sinatra::Base

    configure do
        set :views, 'app/views'
        enable :sessions
        set :session_secret, SecureRandom.hex(64)
    end

    get '/' do
        erb :index
    end

end