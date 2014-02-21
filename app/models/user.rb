class User < ActiveRecord::Base
  attr_accessor :password
  validates :login, :presence => true
  validates :email, :presence => true, :uniqueness => true
  validates :password, :confirmation => true
  validates_length_of :password, :in => 6..20, :on => :create
end
