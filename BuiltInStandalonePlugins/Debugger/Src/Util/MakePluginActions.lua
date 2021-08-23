local Constants = require(script.Parent.Constants)

local function makeAction(plugin, localization, id)
	return {
		id = id,
		text = localization:getText("Common", id),
		allowBinding = false,
	}
end

return function(plugin, localization)
	local actions = {}
	for key, value in pairs(Constants.ActionIds) do
		actions[value] = makeAction(plugin, localization, value)
	end

	actions[Constants.ActionIds.CopySelected].defaultShortcut = "Ctrl+C"
	actions[Constants.ActionIds.DeleteSelected].defaultShortcut = "Delete"
	actions[Constants.ActionIds.SelectAll].defaultShortcut = "Ctrl+A"

	return actions
end
 