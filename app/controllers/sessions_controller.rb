class SessionsController < ApplicationController
	before_filter :cssigned_in?
  def new
  end

  def create
	user=User.find_by_username(params[:username])
	if user && user.authenticate(params[:password])
		session[:user_id]= user.id
		redirect_to root_path
	else
		flash.now[:error]="Invalid name/password combination."
		render 'new'
	end
  end

  def destroy
	if signed_in?
		session[:user_id]=nil
	else
		flash[:notice]="You need to sign in first"
	end
		redirect_to root_path
  end
  def newcs
  end
  def createcs
	cs=Customer.find_by_email(params[:email])
	if cs && cs.authenticate(params[:password])
		session[:cs_id] = cs.id
		redirect_to root_path
	else
		flash[:error]= "Invalid Username/Password combination"
		render 'newcs'
	end
  end
  def destroycs
	if cssigned_in?
		session[:cs_id] = nil
	else
		flash[:notice]="You need to sign in first"
	end
	redirect_to root_path
  end		
end
