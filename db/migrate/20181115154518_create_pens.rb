class CreatePens < ActiveRecord::Migration[5.2]
  def change
    create_table :pens do |t|
      t.string :company
      t.string :model
      t.boolean :lent_out

      t.timestamps
    end
  end
end
