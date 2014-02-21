require 'digest/sha1'

class User < ActiveRecord::Base
  validates :login, :presence => true
  validates :email, :presence => true, :uniqueness => true
  validates :password, :confirmation => true
  validates_length_of :password, :in => 6..20, :on => :create
  has_secure_password
end
