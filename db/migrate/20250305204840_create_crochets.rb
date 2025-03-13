class CreateCrochets < ActiveRecord::Migration[8.0]
  def change
    create_table :crochets do |t|
      t.string :modelo
      t.string :color
      t.integer :cantidad

      t.timestamps
    end
  end
end
