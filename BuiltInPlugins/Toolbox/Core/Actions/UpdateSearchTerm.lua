local Plugin = script.Parent.Parent.Parent

local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Action = Framework.Util.Action

return Action(script.Name, function(searchTerm)
	assert(type(searchTerm) == "string", "searchTerm must be a string")

	return {
		searchTerm = searchTerm,
	}
end)
