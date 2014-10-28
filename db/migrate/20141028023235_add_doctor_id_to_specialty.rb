class AddDoctorIdToSpecialty < ActiveRecord::Migration
  def change
    add_column :specialties, :doctor_id, :integer
  end
end
