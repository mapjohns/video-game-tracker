class UsersController < ApplicationController
    get '/signup' do
        erb :'users/signup'
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
			redirect '/signup'
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
		  redirect "/"
		else
		  redirect "/failure"
		end
	end

	get "/logout" do
		session.clear
		redirect "/"
	end
end