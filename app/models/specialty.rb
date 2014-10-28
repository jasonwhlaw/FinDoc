class Specialty < ActiveRecord::Base

  # attr_accessible :name
  # validates :name, :presence => true

  # has_many :doctor_specialties
  has_many :doctors, :through => :doctor_specialties


end
