class CreateWarnings < ActiveRecord::Migration
  def change
    create_table :warnings do |t|
      t.string :name
      t.string :countryid

      t.timestamps
    end
  end
end
