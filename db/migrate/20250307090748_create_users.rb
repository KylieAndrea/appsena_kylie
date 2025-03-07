class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :tipo_documento
      t.integer :documento

      t.timestamps
    end
  end
end
