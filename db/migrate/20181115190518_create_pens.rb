class CreatePens < ActiveRecord::Migration[5.2]
  def change
    create_table :pens do |t|
      t.string :model
      t.boolean :lent_out
      t.references :nib, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
