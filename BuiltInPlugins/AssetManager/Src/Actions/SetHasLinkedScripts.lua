local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework.Util.Action)

return Action(script.Name, function(hasLinkedScripts)
	assert(type(hasLinkedScripts) == "boolean",
		string.format("SetHasLinkedScripts requires a boolean, not %s", type(hasLinkedScripts)))

	return {
		hasLinkedScripts = hasLinkedScripts,
	}
end)