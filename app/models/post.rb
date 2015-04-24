class Post < ActiveRecord::Base
	has_many :users
	has_many :comments
	mount_uploader :picture, PictureUploader
end
