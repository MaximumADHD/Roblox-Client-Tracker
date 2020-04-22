local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local MainReducer = require(script.Parent.MainReducer)

return function()
	it("should combine all of its reducers", function()
		local r = Rodux.Store.new(MainReducer)
		expect(r).to.be.ok()
		local state = r:getState()
		expect(state).to.be.ok()

		local expectedKeys = {
			"PluginMetadata",
			"Message",
			"CloudTable",
		}
		for _, childReducerName in ipairs(expectedKeys) do
			expect(state[childReducerName]).to.be.ok()
		end
	end)
end