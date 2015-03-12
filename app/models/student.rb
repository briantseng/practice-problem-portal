require 'bcrypt'

class Student < ActiveRecord::Base
  attr_accessible :email, :hashed_password, :password, :password_confirmation
  
  include BCrypt

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.hashed_password = @password
  end

end
