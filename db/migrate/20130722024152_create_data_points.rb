class CreateDataPoints < ActiveRecord::Migration
  def change
    create_table :data_points do |t|
      t.string :tag
      t.string :title
      t.string :description
      t.pubdate :date

      t.timestamps
    end
  end
end
