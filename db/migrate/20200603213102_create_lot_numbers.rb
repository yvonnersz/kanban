class CreateLotNumbers < ActiveRecord::Migration
  def change
    create_table :lot_numbers do |t|
      t.string :lot
      t.integer :amount
      t.integer :raw_material_id
    end
  end
end
