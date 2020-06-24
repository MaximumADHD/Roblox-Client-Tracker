return function()
	local Plugin = script.Parent.Parent.Parent

	local ToolboxReducer = require(Plugin.Core.Reducers.ToolboxReducer)

	it("should return a table with assets, network errors and page info", function()
		local state = ToolboxReducer(nil, {})

		expect(state).to.be.ok()
		expect(type(state)).to.equal("table")
		expect(state.assets).to.be.ok()
		expect(state.networkErrors).to.be.ok()
		expect(state.pageInfo).to.be.ok()
		expect(state.voting).to.be.ok()
		expect(state.liveSearch).to.be.ok()
		expect(state.purchase).to.be.ok()
	end)
end
