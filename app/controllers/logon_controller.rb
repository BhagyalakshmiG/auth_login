class LogonController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:logon][:email].downcase)
    if user && user.authenticate(params[:logon][:password])
      render 'welcome'
    else
      render 'new'
    end
  end

  def welcome

  end

  def forgotpwd
  	
  end

  def sendpwd
  	user = User.find_by(email: params[:logon][:email].downcase)
  	# if user
  			
  	# else
  	# 	render 'new'
  	# end
  	render 'new' unless user
  end
end
