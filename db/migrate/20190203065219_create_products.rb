class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :release_year
      t.text :discription
      t.string :director
      t.string :cast
      t.string :url
      t.string :thumbnail
      t.string :running_time
      t.float :evaluation
      t.decimal :price
      t.integer :episode

      t.timestamps
    end
  end
end
