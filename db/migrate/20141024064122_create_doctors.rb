class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :specialty

      t.timestamps
    end
  end
end
