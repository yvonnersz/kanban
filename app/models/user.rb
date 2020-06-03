class User < ActiveRecord::Base
  has_secure_password
  # 'Bcrypt' gem macro allows us to use a method called "authenticate".
  # Takes the password as plain string and checks the database for match.
  has_many :raw_materials
end
