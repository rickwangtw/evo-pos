class SessionsController < ApplicationController
  def login
  end

  def login_attempt
    authorized_user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
    if authorized_user
      puts "Authorized User!"
      redirect_to poshome_index_url
    else
      flash[:notice] = "Invalid Username or Password"
      flash[:color]= "invalid"
      render "login"
    end
  end
end
