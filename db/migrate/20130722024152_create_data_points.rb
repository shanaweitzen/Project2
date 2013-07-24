class CreateDataPoints < ActiveRecord::Migration
  def change
    create_table :data_points do |t|
      t.string :tag
      t.string :title
      t.string :description
      t.date :pubdate

      t.timestamps
    end
  end
end
