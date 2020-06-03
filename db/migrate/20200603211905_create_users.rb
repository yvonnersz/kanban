class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      # This line will encrypt the password by using the 'bcrypt' gem.
      t.integer :raw_material_id
    end
  end
end
