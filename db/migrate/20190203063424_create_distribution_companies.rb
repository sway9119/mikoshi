class CreateDistributionCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :distribution_companies do |t|
      t.string :name

      t.timestamps
    end
  end
end
