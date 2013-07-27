class CreateDataPoints < ActiveRecord::Migration
  def change
    create_table :data_points do |t|
      t.string :alpha_2_code
      t.string :title
      t.text :description
      t.date :pubdate
      t.string :level
      

      t.timestamps
    end
  end
end
