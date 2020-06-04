yvonne = User.create(username:"yvonne", password: "password")
nguyen = User.create(username:"nguyen", password: "password")

toluene = RawMaterial.create(:chemical => "Toluene", :company => "Allnex", :lot_number => "SHBJ128391", :amount => 50, :user_id => yvonne.id)
iboa = RawMaterial.create(:chemical => "IBOA", :company => "Allnex", :lot_number => "IBOA2930812", :amount => 100, :user_id => nguyen.id)

yvonne.raw_materials.create(:chemical => "Hexane")

toluene.user.create(:user_id => yvonne.id)
