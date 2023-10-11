local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: "AutocompleteDropdownSelectionChanged",
	selectedIndex: number,
}

return Rodux.makeActionCreator(script.Name, function(selectedIndex: number)
	return {
		selectedIndex = selectedIndex,
	}
end)
