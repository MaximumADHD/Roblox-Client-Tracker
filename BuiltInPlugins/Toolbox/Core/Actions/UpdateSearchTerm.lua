local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Framework = require(Libs.Framework)
local Action = Framework.Util.Action

return Action(script.Name, function(searchTerm)
	assert(type(searchTerm) == "string", "searchTerm must be a string")

	return {
        searchTerm = searchTerm
	}
end)
