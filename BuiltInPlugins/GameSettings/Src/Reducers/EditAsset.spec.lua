local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Rodux = require(Plugin.Rodux)

local EditAsset = require(script.parent.EditAsset)

local SetEditPlaceId = require(Plugin.Src.Actions.SetEditPlaceId)
local SetEditDevProductId = require(Plugin.Src.Actions.SetEditDevProductId)

local testImmutability = require(Plugin.Src.Util.testImmutability)

return function()
	it("should return a table with the correct members", function()
		local state = EditAsset(nil, {})

		expect(type(state)).to.equal("table")
		expect(state.editPlaceId).to.ok()
	end)

	describe("SetEditPlaceId action", function()
		it("should validate its inputs", function()
			expect(function()
				SetEditPlaceId("yeet")
			end).to.throw()

			expect(function()
				SetEditPlaceId(Cryo.None)
			end).to.throw()

			expect(function()
				SetEditPlaceId({ id = true, })
			end).to.throw()

			expect(function()
				SetEditPlaceId({})
			end).to.throw()
		end)

		it("should not mutate the state", function()
			local immutabilityPreserved = testImmutability(EditAsset, SetEditPlaceId(1337))
			expect(immutabilityPreserved).to.equal(true)
		end)

		it("should set places", function()
			local r = Rodux.Store.new(EditAsset)
			local state = r:getState()
			expect(state.editPlaceId).to.equal(0)

			state = EditAsset(state, SetEditPlaceId(1337))
			expect(state.editPlaceId).to.equal(1337)

			state = EditAsset(state, SetEditPlaceId(0))
			expect(state.editPlaceId).to.equal(0)
		end)
	end)

	describe("SetEditDevProductId action", function()
		it("should validate its inputs", function()
			expect(function()
				SetEditDevProductId(nil)
			end).to.be.ok()

			expect(function()
				SetEditDevProductId(111)
			end).to.be.ok()

			expect(function()
				SetEditDevProductId("222")
			end).to.be.throw()

			expect(function()
				SetEditDevProductId({})
			end).to.be.throw()
		end)

		it("should set edit dev product id", function()
			local r = Rodux.Store.new(EditAsset)
			local state = r:getState()

			expect(state.editDevProductId).to.equal(nil)

			state = EditAsset(state, SetEditDevProductId(111))
			expect(state.editDevProductId).to.equal(111)

			state = EditAsset(state, SetEditDevProductId(nil))
			expect(state.editDevProductId).to.equal(nil)
		end)
	end)
end