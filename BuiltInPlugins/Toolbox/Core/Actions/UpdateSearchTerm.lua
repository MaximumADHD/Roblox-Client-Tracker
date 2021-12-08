local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Framework = require(Libs.Framework)
local Action = Framework.Util.Action

return Action(script.Name, function(searchTerm)
	assert(type(searchTerm) == "string", "searchTerm must be a string")

	return {
        searchTerm = searchTerm
	}
end)
