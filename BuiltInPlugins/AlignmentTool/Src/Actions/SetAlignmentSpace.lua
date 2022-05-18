local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Action = Framework.Util.Action

return Action(script.Name, function(alignmentSpace)
	assert(type(alignmentSpace) == "string", "Expected alignmentSpace to be a string")

	return {
		alignmentSpace = alignmentSpace,
	}
end)
