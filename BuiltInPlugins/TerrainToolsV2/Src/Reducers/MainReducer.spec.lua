local Plugin = script.Parent.Parent.Parent
local Packages = Plugin.Packages

local MainReducer = require(script.Parent.MainReducer)
local Rodux = require(Packages.Rodux)

return function()
	it("should combine all of its reducers", function()
		local r = Rodux.Store.new(MainReducer)
		expect(r).to.be.ok()

		local state = r:getState()
		expect(state).to.be.ok()

		local expectedKeys = {
			"Tools",
			"GenerateTool",
			"ImportTool",
			"SeaLevelTool",
			"RegionTool",
			"FillTool",
			"AddTool",
			"SubtractTool",
			"GrowTool",
			"ErodeTool",
			"SmoothTool",
			"FlattenTool",
			"PaintTool",
		}
		for _, childReducerName in ipairs(expectedKeys) do
			expect(state[childReducerName]).to.be.ok()
		end
	end)
end