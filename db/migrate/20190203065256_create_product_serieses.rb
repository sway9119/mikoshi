class CreateProductSerieses < ActiveRecord::Migration[5.1]
  def change
    create_table :product_serieses do |t|
      t.references :product, foreign_key: true
      t.references :seriese, foreign_key: true

      t.timestamps
    end
  end
end
