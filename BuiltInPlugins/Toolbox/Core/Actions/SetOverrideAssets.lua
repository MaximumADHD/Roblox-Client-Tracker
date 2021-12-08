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

return Action(script.Name, function(resultsArray)
	assert(typeof(resultsArray) == "table", "SetOverrideAssets resultsArray must be a table")
	return {
		resultsArray = resultsArray,
	}
end)
