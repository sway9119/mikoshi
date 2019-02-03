class CreateProductDistributionCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :product_distribution_companies do |t|
      t.references :product, foreign_key: true
      t.references :distribution_company, foreign_key: true

      t.timestamps
    end
  end
end
