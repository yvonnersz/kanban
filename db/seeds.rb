yvonne = User.create(username:"yvonne", password: "password")
nguyen = User.create(username:"nguyen", password: "password")

toluene = RawMaterial.create(:chemical => "Toluene", :company => "Allmex", :lot_number => "TOLU060820", :amount => 50, :user_id => yvonne.id)
iboa = RawMaterial.create(:chemical => "IBOA", :company => "Allmex", :lot_number => "IBOA062020", :amount => 100, :user_id => nguyen.id)

toluene.user.create(:user_id => yvonne.id)
iboa.user.create(:user_id => nguyen.id)

yvonne.raw_materials.create(:chemical => "Toluene", :company => "Allmex", :lot_number => "TOLU060820", :amount => 50, :user_id => yvonne.id)
nguyen.raw_materials.create(:chemical => "IBOA", :company => "Allmex", :lot_number => "IBOA062020", :amount => 100, :user_id => nguyen.id)
