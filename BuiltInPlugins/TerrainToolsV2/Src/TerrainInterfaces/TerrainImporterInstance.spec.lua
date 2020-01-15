local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers

local MockTerrain = require(TestHelpers.MockTerrain)

local TerrainImporter = require(script.Parent.TerrainImporterInstance)

return function()
	local terrain = MockTerrain.new()

	it("should be creatable", function()
		expect(TerrainImporter.new({
			terrain = terrain,
		})).to.be.ok()
	end)

	it("should require an options table", function()
		expect(function()
			TerrainImporter.new(nil)
		end).to.throw()
	end)

	it("should require a terrain instance", function()
		expect(function()
			TerrainImporter.new({})
		end).to.throw()
	end)
end
