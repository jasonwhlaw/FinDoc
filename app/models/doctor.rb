class Doctor < ActiveRecord::Base
mount_uploader :picture, PictureUploader

  # attr_accessible :name
  # validates :last_name, :presence => true

  # has_many :doctor_specialties
  has_and_belongs_to_many :specialties

end
