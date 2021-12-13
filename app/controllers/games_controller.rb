class GamesController < ApplicationController
    
    get '/games' do
        @user = current_user
        if logged_in?
            erb :'games/index'
        else
            redirect '/'
        end
    end

    get '/games/new' do
        @user = current_user
        if logged_in?
            erb :'games/new'
        else
            redirect '/'
        end
    end

    post '/games' do
        @user = current_user.games.create(params)
        redirect "/games"
    end

    get '/games/:id' do
        if logged_in?
            @game = current_user.games.find_by(:id=>params[:id])
            if @game.nil?
                redirect "/games"
            else
                erb :'games/show'
            end
        else
            redirect '/'
        end
    end

    get '/games/:id/edit' do
        if logged_in?
            @game = current_user.games.find_by(:id=>params[:id])
            if @game.nil?
                redirect "/games"
            else
                erb :'games/edit'
            end
        else
            redirect '/'
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
