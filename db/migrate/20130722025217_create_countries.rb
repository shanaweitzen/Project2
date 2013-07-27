class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :alpha_2_code
      t.string :alpha_3_code
      t.string :numeric_code
      t.string :latitude_average
      t.string :longitude_average

      t.timestamps
    end
  end
end
