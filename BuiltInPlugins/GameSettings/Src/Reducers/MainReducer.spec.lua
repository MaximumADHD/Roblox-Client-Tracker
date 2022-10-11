return function()
	local Plugin = script.Parent.Parent.Parent

	local Rodux = require(Plugin.Packages.Rodux)

	local MainReducer = require(Plugin.Src.Reducers.MainReducer)

	it("should combine all other reducers", function()
		local store = Rodux.Store.new(MainReducer)
		expect(store:getState().Status).to.be.ok()
		expect(store:getState().Settings).to.be.ok()
	end)
end
