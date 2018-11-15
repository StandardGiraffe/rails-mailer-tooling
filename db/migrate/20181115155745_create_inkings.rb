class CreateInkings < ActiveRecord::Migration[5.2]
  def change
    create_table :inkings do |t|
      t.string :ink_company
      t.string :ink_name
      t.date :date_inked
      t.boolean :currently_inked
      t.references :pen, foreign_key: true

      t.timestamps
    end
  end
end
