class DoctorSpecialty < ActiveRecord::Base
# attr_accessible :doctor_id, :specialty_id

belongs_to :doctor
belongs_to :specialty


end
