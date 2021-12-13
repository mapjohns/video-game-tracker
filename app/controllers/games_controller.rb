class GamesController < ApplicationController
    get '/games' do
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

    get '/games/:id' do
        @game = current_user.games.find_by(:id=>params[:id])
        if @game.nil?
            redirect "/games"
        else
            erb :'games/show'
        end
    end

    get '/games/:id/edit' do
        @game = current_user.games.find_by(:id=>params[:id])
        if @game.nil?
            redirect "/games"
        else
            erb :'games/edit'
        end
    end

    patch '/games/:id' do
        @game = current_user.games.find_by(:id=>params[:id])
        @game.update(title: params[:title], rating: params[:rating], review: params[:review], status: params[:status])
        redirect "/games/#{@game.id}"
    end

    delete '/games/:id' do
        @game = current_user.games.find_by(:id=>params[:id])
        @game.delete
        redirect "/games" 
    end
end

# t.string :title
# t.integer :rating
# t.string :review
# t.string :status
# t.integer :user_id
##Add Date Started and Date Completed

# Center Statuses on Games Library Page