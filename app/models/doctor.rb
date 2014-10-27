class Doctor < ActiveRecord::Base
mount_uploader :picture, PictureUploader
end
