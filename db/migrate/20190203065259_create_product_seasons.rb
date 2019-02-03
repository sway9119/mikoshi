class CreateProductSeasons < ActiveRecord::Migration[5.1]
  def change
    create_table :product_seasons do |t|
      t.references :product, foreign_key: true
      t.references :season, foreign_key: true

      t.timestamps
    end
  end
end
