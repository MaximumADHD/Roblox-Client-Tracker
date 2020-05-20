local Plugin = script.Parent.Parent.Parent

local Framework = Plugin.Packages.Framework
local Action = require(Framework.Util.Action)

return Action(script.Name, function(alignmentMode)
	assert(type(alignmentMode) == "string", "Expected alignmentMode to be a string")
	return {
		alignmentMode = alignmentMode,
	}
end)
