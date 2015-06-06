class CreateAsthmaEmergencyDepartments < ActiveRecord::Migration
  def change
    create_table :asthma_emergency_departments do |t|
      t.string :zipcode
      t.integer :children_visits
      t.decimal :children_age_adjusted_rate
      t.integer :adult_visits
      t.decimal :adult_age_adjusted_rate
      t.integer :visits
      t.decimal :age_adjusted_rate
      t.integer :county_fips_code

      t.timestamps null: false
    end
  end
end
