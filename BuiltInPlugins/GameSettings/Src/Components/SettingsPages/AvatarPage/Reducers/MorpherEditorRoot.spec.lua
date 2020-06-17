return function()
	SKIP()

	--[[
	local pluginRoot = script.Parent.Parent.Parent.Parent.Parent.Parent
	local paths = require(pluginRoot.Code.Paths)
	paths.requireAll(require(pluginRoot.Code.Debug).GetRoactRoduxPath(pluginRoot, require(pluginRoot.Code.UtilityFunctions.UtilityFunctionsService)))

	it("should combine all other reducers", function()
		local store = paths.Rodux.Store.new(paths.ReducerRoot)
		expect(store:getState().StateMorpher.StateTemplates).to.be.ok()
	end)]]
end