local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers

local MockTerrain = require(TestHelpers.MockTerrain)

local TerrainSeaLevel = require(script.Parent.TerrainSeaLevel)

local FFlagTerrainToolsFixGettingTerrain = game:GetFastFlag("TerrainToolsFixGettingTerrain")

return function()
	-- TODO: Shouldn't flag tests like this
	if FFlagTerrainToolsFixGettingTerrain then
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
	else
		it("should be creatable", function()
			expect(TerrainSeaLevel.new()).to.be.ok()
		end)
	end
end
