class CreateDoctorSpecialties < ActiveRecord::Migration
  def change
    create_table :doctor_specialties do |t|
      t.references :doctor
      t.references :specialty

      # t.integer :doctor_id, :null => false
      # t.integer :specialty_id,  :null => false

      t.timestamps
    end
  end
end
