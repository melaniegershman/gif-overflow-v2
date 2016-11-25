class User < ActiveRecord::Base
include BCrypt



def password
  @password ||= Password.new(hashed_password)
end

def password=(new_password)
  @password = Password.create(new_password)
  self.password_hashed = @password
end
end
