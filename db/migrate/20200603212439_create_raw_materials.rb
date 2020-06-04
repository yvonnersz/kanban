class CreateRawMaterials < ActiveRecord::Migration
  def change
    create_table :raw_materials do |t|
      t.string :chemical
      t.string :company
      t.string :lot_number
      t.integer :amount
      t.integer :user_id
    end
  end
end
