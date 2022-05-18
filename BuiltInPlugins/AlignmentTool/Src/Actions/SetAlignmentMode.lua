local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

return Action(script.Name, function(alignmentMode)
	assert(type(alignmentMode) == "string", "Expected alignmentMode to be a string")
	return {
		alignmentMode = alignmentMode,
	}
end)
