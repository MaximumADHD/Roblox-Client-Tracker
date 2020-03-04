local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers

local MockTerrain = require(TestHelpers.MockTerrain)

local TerrainSeaLevel = require(script.Parent.TerrainSeaLevel)

return function()
	local terrain = MockTerrain.new()

	it("should be creatable", function()
		expect(TerrainSeaLevel.new({
			terrain = terrain,
		})).to.be.ok()
	end)

	it("should require an options table", function()
		expect(function()
			TerrainSeaLevel.new(nil)
		end).to.throw()
	end)

	it("should require a terrain instance", function()
		expect(function()
			TerrainSeaLevel.new({})
		end).to.throw()
	end)
end
