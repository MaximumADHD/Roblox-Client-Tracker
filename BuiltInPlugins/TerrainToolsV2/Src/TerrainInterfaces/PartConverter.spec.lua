local FFlagTerrainToolsConvertPartTool = game:GetFastFlag("TerrainToolsConvertPartTool")
local FFlagTerrainToolsFlagConvertToolRemoval = game:GetFastFlag("TerrainToolsFlagConvertToolRemoval")
local convertToolRemoval = FFlagTerrainToolsFlagConvertToolRemoval and not FFlagTerrainToolsConvertPartTool

if convertToolRemoval then
	return function() end
end

-- TODO: smkuhne: Remove file with removal of the PartConverter
local Plugin = script.Parent.Parent.Parent

local UILibraryCompat = Plugin.Src.UILibraryCompat
local Localization = require(UILibraryCompat.Localization)

local TestHelpers = Plugin.Src.TestHelpers
local MockTerrain = require(TestHelpers.MockTerrain)

local PartConverter = require(script.Parent.PartConverter)

return function()
	local terrain = MockTerrain.new()
	local localization = Localization.mock()

	describe("its constructor", function()
		it("should be creatable", function()
			local pc = PartConverter.new({
				terrain = terrain,
				localization = localization,
			})
			expect(pc).to.be.ok()
			pc:destroy()
		end)

		it("should require an options table", function()
			expect(function() PartConverter.new() end).to.throw()
		end)

		it("should require a terrain instance", function()
			expect(function()
				PartConverter.new({
					localization = localization,
				})
			end).to.throw()
		end)

		it("should require a localization instance", function()
			expect(function()
				PartConverter.new({
					terrain = terrain,
				})
			end).to.throw()
		end)
	end)
end
