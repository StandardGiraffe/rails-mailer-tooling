class CreateNibTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :nib_types do |t|
      t.string :nib
      t.references :pen, foreign_key: true

      t.timestamps
    end
  end
end
