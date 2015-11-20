class User < ActiveRecord::Base
  has_attached_file :photo
  has_secure_password
end
