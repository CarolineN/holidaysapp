module ApplicationHelper

	def signed_in?
		if session[:user_id].nil?
			return
		else
			@current_user = User.find_by_id(session[:user_id])
		end
	end
	def cssigned_in?
		if session[:cs_id].nil?
			return
		else
			@current_cs = Customer.find_by_id(session[:cs_id])
		end
	end
end
