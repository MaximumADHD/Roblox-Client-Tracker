local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers

local MockTerrain = require(TestHelpers.MockTerrain)

local performTerrainBrushOperation = require(script.Parent.performTerrainBrushOperation)

return function()
	local terrain = MockTerrain.new()

	it("should return a function", function()
		expect(type(performTerrainBrushOperation)).to.equal("function")
	end)

	it("should require a terrain instance", function()
		expect(function()
			performTerrainBrushOperation(nil, {})
		end).to.throw()
	end)

	it("should require an options table", function()
		expect(function()
			performTerrainBrushOperation(terrain, nil)
		end).to.throw()
	end)
end
