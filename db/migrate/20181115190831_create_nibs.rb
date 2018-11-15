class CreateNibs < ActiveRecord::Migration[5.2]
  def change
    create_table :nibs do |t|
      t.references :grind, foreign_key: true
      t.references :material, foreign_key: true

      t.timestamps
    end
  end
end
