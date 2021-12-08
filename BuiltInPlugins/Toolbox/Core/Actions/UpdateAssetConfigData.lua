local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Util = require(Libs.Framework).Util
local Action = Util.Action

return Action(script.Name, function(assetData)
	assert(type(assetData) == "table", "assetData has to be a table.")
	assert(next(assetData) ~= nil, "assetData can't be an empty table.")

	return {
		assetConfigData = assetData,
	}
end)
