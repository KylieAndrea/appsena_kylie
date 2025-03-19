class CreateAprendizs < ActiveRecord::Migration[8.0]
  def change
    create_table :aprendizs do |t|
      t.string :nombre
      t.integer :documento

      t.timestamps
    end
  end
end
