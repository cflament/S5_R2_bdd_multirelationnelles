class RemoveSpecialityFromDoctorTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :doctors, :speciality
  end
end
