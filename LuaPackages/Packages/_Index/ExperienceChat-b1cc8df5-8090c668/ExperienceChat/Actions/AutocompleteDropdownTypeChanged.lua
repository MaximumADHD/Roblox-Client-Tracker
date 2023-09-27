local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: "AutocompleteDropdownTypeChanged",
	autocompleteType: "emojis" | "commands" | "none",
}

return Rodux.makeActionCreator(script.Name, function(autocompleteType: "emojis" | "commands" | "none")
	return {
		autocompleteType = autocompleteType,
	}
end)
