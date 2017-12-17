return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Assets = require(Modules.LuaApp.Reducers.AvatarEditor.Assets)
	local EquipAsset = require(Modules.LuaApp.Actions.EquipAsset)
	local UnequipAsset = require(Modules.LuaApp.Actions.UnequipAsset)
	local SetAssets = require(Modules.LuaApp.Actions.SetAssets)
	local SetOutfit = require(Modules.LuaApp.Actions.SetOutfit)

	it("should be an empty table by default", function()
		local state = Assets(nil, {})

		expect(state).to.be.a("table")
		expect(next(state)).never.to.be.ok()
	end)

	it("should equip the asset using EquipAsset", function()
		local state = Assets(nil, EquipAsset("Hat", 1))

        expect(state).to.be.a("table")
        expect(state["Hat"]).to.be.a("table")
        expect(state["Hat"][1]).to.equal(1)

		state = Assets(state, EquipAsset("Hair Accessory", 2))

        expect(state["Hair Accessory"]).to.be.a("table")
        expect(state["Hair Accessory"][1]).to.equal(2)
	end)

	it("should unequip the asset using UnequipAsset", function()
		local state = Assets(nil, EquipAsset("Hat", 1))
		state = Assets(state, UnequipAsset("Hat", 1))

		expect(state).to.be.a("table")
		expect(state["Hat"]).to.be.a("table")
		expect(next(state["Hat"])).never.to.be.ok()
	end)

	it("should equip the assets using SetAssets", function()
		local state = Assets(nil, SetAssets({
			["Hat"] = {1, 2, 3},
			["Face Accessory"] = {4},
			["Neck Accessory"] = {7},
		}))

        expect(state).to.be.a("table")
        expect(state["Hat"]).to.be.a("table")
        expect(state["Hat"][1]).to.equal(1)
        expect(state["Hat"][2]).to.equal(2)
		expect(state["Hat"][3]).to.equal(3)

        expect(state["Face Accessory"]).to.be.a("table")
        expect(state["Face Accessory"][1]).to.equal(4)

		expect(state["Neck Accessory"]).to.be.a("table")
		expect(state["Neck Accessory"][1]).to.equal(7)
	end)

	it("should equip the assets using SetOutfit", function()
		local state = Assets(nil, SetOutfit({
			["Hat"] = {1, 2, 3},
			["Face Accessory"] = {4},
			["Neck Accessory"] = {7},
		}))

		expect(state).to.be.a("table")
		expect(state["Hat"]).to.be.a("table")
		expect(state["Hat"][1]).to.equal(1)
		expect(state["Hat"][2]).to.equal(2)
		expect(state["Hat"][3]).to.equal(3)

		expect(state["Face Accessory"]).to.be.a("table")
		expect(state["Face Accessory"][1]).to.equal(4)

		expect(state["Neck Accessory"]).to.be.a("table")
		expect(state["Neck Accessory"][1]).to.equal(7)
	end)

	it("should be unchanged by other actions", function()
		local state = Assets(nil, {})

		state = Assets(state, {
			type = "Do the thing!",
			assetType = "Hat",
			assetId = 1,
		})

		expect(state).to.be.a("table")
		expect(next(state)).never.to.be.ok()

		state = Assets(state, {
			type = "Do the thing!",
			assets = {
				["Hat"] = {1, 2, 3},
				["Face Accessory"] = {4},
				["Neck Accessory"] = {7},
			}
		})

		expect(state).to.be.a("table")
		expect(next(state)).never.to.be.ok()
	end)
end