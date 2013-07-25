class CreateDataPoints < ActiveRecord::Migration
  def change
    create_table :data_points do |t|
      t.string :countryid
      t.string :title
      t.text :description
      t.date :pubdate

      t.timestamps
    end
  end
end
