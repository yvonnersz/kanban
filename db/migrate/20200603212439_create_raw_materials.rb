class CreateRawMaterials < ActiveRecord::Migration
  def change
    create_table :raw_materials do |t|
      t.string :chemical
      t.string :company
      t.integer :user_id
      t.integer :lot_number_id
    end
  end
end
