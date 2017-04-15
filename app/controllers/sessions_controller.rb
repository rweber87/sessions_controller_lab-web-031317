class SessionsController < ApplicationController
	
	def new
	end

	def create
		session[:name] = params[:name]
		if !session[:name].empty?
			redirect_to '/'
		else
			render '/login'
		end
	end

	def destroy
		session.delete :name
		redirect_to '/login'
	end

end