class CreateLauras < ActiveRecord::Migration[8.0]
  def change
    create_table :lauras do |t|
      t.string :personalidad
      t.string :caracteristicas

      t.timestamps
    end
  end
end
