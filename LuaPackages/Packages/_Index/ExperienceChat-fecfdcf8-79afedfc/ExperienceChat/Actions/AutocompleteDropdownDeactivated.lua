local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: "AutocompleteDropdownDeactivated",
	activated: boolean,
}

return Rodux.makeActionCreator(script.Name, function()
	return {}
end)
