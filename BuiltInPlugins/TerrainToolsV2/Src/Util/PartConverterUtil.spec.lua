-- TODO: DEVTOOLS-3590

local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers

local MockTerrain = require(TestHelpers.MockTerrain)

local PartConverterUtil = require(script.Parent.PartConverterUtil)

return function()
	local terrain = MockTerrain.new()
end
