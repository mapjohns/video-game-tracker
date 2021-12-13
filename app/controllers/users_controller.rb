class UsersController < ApplicationController
    get '/signup' do
		if logged_in?
			redirect '/games'
		else
        	erb :'users/signup'
		end
    end

    post '/signup' do
		user = User.new(:username => params[:username], :password => params[:password])
		if user.save
			redirect "/login"
		  else
			erb :'users/signup'
		  end
	end

	get "/login" do
		if logged_in?
			redirect '/games'
		else
			erb :'users/login'
		end
	end

	post "/login" do
		#binding.pry
		@user = User.find_by(:username => params[:username])

		if @user && @user.authenticate(params[:password])
		  session[:user_id] = @user.id
		#   binding.pry
		  redirect "/games"
		else
		  redirect "/failure"
		end
	end

	get '/failure' do
		erb :'users/failure'
	end

	get "/logout" do
		session.clear
		redirect "/"
	end
end