class AddLatLngToAsthmaEmergencyDepartments < ActiveRecord::Migration
  def change
    add_column :asthma_emergency_departments, :longitude, :decimal, precision: 15, scale: 10
    add_column :asthma_emergency_departments, :latitude, :decimal, precision: 15, scale: 10
  end
end
