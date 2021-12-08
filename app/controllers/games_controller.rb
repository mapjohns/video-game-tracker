class GamesController < ApplicationController
    get '/games' do
        binding.pry
        @user = current_user
        erb :'games/index'
    end

    get '/games/new' do
        @user = current_user
        erb :'games/new'
    end

    post '/games' do
        @user = current_user.games.create(params)
        redirect "/games"
    end
end

# t.string :title
# t.integer :rating
# t.string :review
# t.string :status
# t.integer :user_id