class CreateHulus < ActiveRecord::Migration[5.1]
  def change
    create_table :hulus do |t|
      t.string :index
      t.string :show
      t.string :new
      t.string :create
      t.string :edit
      t.string :update
      t.string :destroy

      t.timestamps
    end
  end
end
