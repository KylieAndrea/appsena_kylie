class CreateCars < ActiveRecord::Migration[8.0]
  def change
    create_table :cars do |t|
      t.string :placa
      t.integer :modelo

      t.timestamps
    end
  end
end
