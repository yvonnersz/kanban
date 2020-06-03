class RawMaterial < ActiveRecord::Base
  has_many :users
  has_many :lot_numbers
end
