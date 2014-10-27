class AddPictureToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :picture, :string
  end
end
