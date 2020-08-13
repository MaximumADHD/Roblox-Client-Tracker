local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent

local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil
local UILibraryCompat = Plugin.Src.UILibraryCompat
local Localization = FFlagTerrainToolsUseDevFramework
	and require(UILibraryCompat.Localization)
	or UILibrary.Studio.Localization

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
