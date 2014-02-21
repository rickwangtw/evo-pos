class AdminsetupController < ApplicationController
  def index
    has_admin = User.where(is_admin: true).first
    if has_admin != nil
      puts "Admin exists!"
      redirect_to sessions_login_url
    end
    @user = User.new
  end
end
