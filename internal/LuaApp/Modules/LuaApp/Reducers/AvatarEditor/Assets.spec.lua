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

	it("should replace the old assets with new assets when SetAssets", function()
		local state = Assets(nil, SetAssets({
			["Hat"] = {1},
			["Shirt"] = {2},
		}))

		expect(state).to.be.a("table")
		expect(state["Hat"]).to.be.a("table")
		expect(state["Hat"][1]).to.equal(1)

		expect(state["Shirt"]).to.be.a("table")
		expect(state["Shirt"][1]).to.equal(2)

		state = Assets(state, SetAssets({
			["Shirt"] = {3},
			["Pants"] = {4},
		}))

		expect(state).to.be.a("table")
		expect(state["Hat"]).never.to.be.ok()

		expect(state["Shirt"]).to.be.a("table")
		expect(state["Shirt"][1]).to.equal(3)

		expect(state["Pants"]).to.be.a("table")
		expect(state["Pants"][1]).to.equal(4)
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

	it("should equip advanced assets when SetOutfit", function()
		local state = Assets(nil, SetOutfit({
			["Hat"] = {1, 2, 3, 4, 5},
			["Face Accessory"] = {6, 7},
			["Neck Accessory"] = {8, 9},
			["T-Shirt"] = {10},
		}))

		expect(state).to.be.a("table")
		expect(state["Hat"]).to.be.a("table")
		expect(state["Hat"][1]).to.equal(1)
		expect(state["Hat"][2]).to.equal(2)
		expect(state["Hat"][3]).to.equal(3)
		expect(state["Hat"][4]).to.equal(4)
		expect(state["Hat"][5]).to.equal(5)

		expect(state["Face Accessory"]).to.be.a("table")
		expect(state["Face Accessory"][1]).to.equal(6)
		expect(state["Face Accessory"][2]).to.equal(7)

		expect(state["Neck Accessory"]).to.be.a("table")
		expect(state["Neck Accessory"][1]).to.equal(8)
		expect(state["Neck Accessory"][2]).to.equal(9)

		expect(state["T-Shirt"]).to.be.a("table")
		expect(state["T-Shirt"][1]).to.equal(10)
	end)

	it("should replace the old assets with new assets when SetOutfit", function()
		local state = Assets(nil, SetOutfit({
			["Hat"] = {1, 2},
			["Shirt"] = {3},
		}))

		expect(state).to.be.a("table")
		expect(state["Hat"]).to.be.a("table")
		expect(state["Hat"][1]).to.equal(1)
		expect(state["Hat"][2]).to.equal(2)

		expect(state["Shirt"]).to.be.a("table")
		expect(state["Shirt"][1]).to.equal(3)

		state = Assets(state, SetOutfit({
			["Shirt"] = {4},
			["Pants"] = {5},
		}))

		expect(state).to.be.a("table")
		expect(state["Hat"]).never.to.be.ok()

		expect(state["Shirt"]).to.be.a("table")
		expect(state["Shirt"][1]).to.equal(4)

		expect(state["Pants"]).to.be.a("table")
		expect(state["Pants"][1]).to.equal(5)
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