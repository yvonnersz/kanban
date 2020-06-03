yvonne = User.create(username:"yvonne", password: "password")
nguyen = User.create(username:"nguyen", password: "password")

hexane = RawMaterial.create(chemical:"hexane", company:"sigma", user_id: yvonne.id)
toluene = RawMaterial.create(chemical:"toluene", company:"sigma", user_id: nguyen.id)

LotNumber.create(lot:"1234", amount: 1, raw_material_id: hexane.id)
LotNumber.create(lot:"12345", amount: 1, raw_material_id: toluene.id)
