class CreateNibMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :nib_materials do |t|
      t.string :material
      t.references :pen, foreign_key: true

      t.timestamps
    end
  end
end
