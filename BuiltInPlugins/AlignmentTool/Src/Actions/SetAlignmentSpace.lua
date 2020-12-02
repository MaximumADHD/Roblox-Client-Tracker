local Plugin = script.Parent.Parent.Parent

local getFFlagAlignInLocalSpace = require(Plugin.Src.Flags.getFFlagAlignInLocalSpace)

local Framework = Plugin.Packages.Framework
local Action = require(Framework.Util.Action)

return Action(script.Name, function(alignmentSpace)
	assert(getFFlagAlignInLocalSpace())
	assert(type(alignmentSpace) == "string", "Expected alignmentSpace to be a string")

	return {
		alignmentSpace = alignmentSpace,
	}
end)
