local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Packages.Framework.Util.Action)

return Action(script.Name, function(selectionIndex)
	assert(type(selectionIndex) == "number",
		string.format("SetSelectionIndex requires a number, not %s", type(selectionIndex)))

	return {
		selectionIndex = selectionIndex,
	}
end)