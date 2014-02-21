class AdminsetupController < ApplicationController
  def index
    has_admin = User.where(is_admin: true).first
    if has_admin != nil
      puts "Admin exists!"
    end
    @user = User.new
  end
end
