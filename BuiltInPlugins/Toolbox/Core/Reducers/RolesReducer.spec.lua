return function()
	local Plugin = script.Parent.Parent.Parent

	local SetCatalogItemCreator = require(Plugin.Core.Actions.SetCatalogItemCreator)

	local RolesReducer = require(Plugin.Core.Reducers.RolesReducer)

	it("should return a table with the correct members", function()
		local state = RolesReducer(nil, {})

		expect(type(state)).to.equal("table")
		expect(state.isCatalogItemCreator).to.be.ok()
		expect(state.isCatalogItemCreator).to.equal(false)
	end)

	describe("SetCatalogItemCreator action", function()
		it("should update isCatalogItemCreator status", function()
			local state = RolesReducer(nil, {})

			state = RolesReducer(state, SetCatalogItemCreator(true))

			expect(state.isCatalogItemCreator).to.equal(true)
		end)
	end)
end
