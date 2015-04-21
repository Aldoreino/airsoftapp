class Post < ActiveRecord::Base
	has_many :users
	mount_uploader :picture, PictureUploader
end
