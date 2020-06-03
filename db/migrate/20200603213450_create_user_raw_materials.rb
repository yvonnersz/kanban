class CreateUserRawMaterials < ActiveRecord::Migration
  def change
    create_table :user_raw_materials do |t|
      t.integer :user_id
      t.integer :raw_material_id
    end
  end
end
