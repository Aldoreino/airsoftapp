class User < ActiveRecord::Base
	has_secure_password
	has_many :comments
	has_many :posts
end
