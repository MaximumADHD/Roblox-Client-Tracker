local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers

local MockTerrain = require(TestHelpers.MockTerrain)

local TerrainGeneration = require(script.Parent.TerrainGenerationInstance)

return function()
	local terrain = MockTerrain.new()

	it("should be creatable", function()
		expect(TerrainGeneration.new({
			terrain = terrain,
		})).to.be.ok()
	end)

	it("should require an options table", function()
		expect(function()
			TerrainGeneration.new(nil)
		end).to.throw()
	end)

	it("should require a terrain instance", function()
		expect(function()
			TerrainGeneration.new({})
		end).to.throw()
	end)

end
