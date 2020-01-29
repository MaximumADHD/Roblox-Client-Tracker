return function()
	local Plugin = script.Parent.Parent.Parent

	local RolesReducer = require(Plugin.Core.Reducers.RolesReducer)

	it("should return a table with the correct members", function()
		local state = RolesReducer(nil, {})

		expect(type(state)).to.equal("table")
		expect(type(state.allowedAssetTypesForRelease)).to.equal("table")
		expect(type(state.allowedAssetTypesForUpload)).to.equal("table")
	end)
end
