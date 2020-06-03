class UserRawMaterial < ActiveRecord::Base
  belongs_to :user
  belongs_to :raw_material
end
