local FFlagTerrainToolsConvertPartTool = game:GetFastFlag("TerrainToolsConvertPartTool")
local FFlagTerrainToolsFlagConvertToolRemoval = game:GetFastFlag("TerrainToolsFlagConvertToolRemoval")
local convertToolRemoval = FFlagTerrainToolsFlagConvertToolRemoval and not FFlagTerrainToolsConvertPartTool

-- TODO: smkuhne: Remove file with removal of the ConvertPart
if convertToolRemoval then
	return function() end
end

local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local MockProvider = require(Plugin.Src.TestHelpers.MockProvider)

local ConvertPart = require(script.Parent.ConvertPart)

return function()
	it("should create and destroy without errors", function()
		local element = MockProvider.createElementWithMockContext(ConvertPart)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
