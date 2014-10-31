class Doctor < ActiveRecord::Base
mount_uploader :picture, PictureUploader

  # attr_accessible :name
  # validates :last_name, :presence => true

  # has_many :doctor_specialties
  has_and_belongs_to_many :specialties

  reverse_geocoded_by :lat, :lng
  after_validation :reverse_geocode  # auto-fetch address
  geocoded_by :address, :latitude  => :lat, :longitude => :lng   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates




end
