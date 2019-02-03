class CreateSerieses < ActiveRecord::Migration[5.1]
  def change
    create_table :serieses do |t|
      t.string :name

      t.timestamps
    end
  end
end
