class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :countryid
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
