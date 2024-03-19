local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: "AutocompleteDropdownActivated",
	activated: boolean,
}

return Rodux.makeActionCreator(script.Name, function(activated: boolean)
	return {
		activated = activated,
	}
end)
