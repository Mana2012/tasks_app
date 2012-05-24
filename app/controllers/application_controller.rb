

class ApplicationController < ActionController::Base
	protect_from_forgery   		#se asegura que los form vengan de nuestro form
	
	private
	def current_user
		if session[:user_id]		#si existe el usuario
			@current_user ||= User.find(session[:user_id])	#buscarlo en la clase user
		end
	end
	
	def logged_in? 			#si la sesion actual esta abierta
		current_user !=nil
	end
	
	helper_method :current_user, :logged_in?
	#hace que estod metodos esten disponibles para las views.
	
end
