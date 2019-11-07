return function()
	local Plugin = script.Parent.Parent.Parent

	local SetCatalogItemCreator = require(Plugin.Core.Actions.SetCatalogItemCreator)

	local RolesReducer = require(Plugin.Core.Reducers.RolesReducer)

	it("should return a table with the correct members", function()
		local state = RolesReducer(nil, {})

		expect(type(state)).to.equal("table")
		if game:GetFastFlag("CMSRemoveUGCContentEnabledBoolean") then
			expect(type(state.allowedAssetTypesForRelease)).to.equal("table")
			expect(type(state.allowedAssetTypesForUpload)).to.equal("table")
		else
			expect(state.isCatalogItemCreator).to.be.ok()
			expect(state.isCatalogItemCreator).to.equal(false)
		end
	end)

	if not game:GetFastFlag("CMSRemoveUGCContentEnabledBoolean") then
		describe("SetCatalogItemCreator action", function()
			it("should update isCatalogItemCreator status", function()
				local state = RolesReducer(nil, {})

				state = RolesReducer(state, SetCatalogItemCreator(true))

				expect(state.isCatalogItemCreator).to.equal(true)
			end)
		end)
	end
end
