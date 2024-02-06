local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: "AutocompeteDropdownResultsChanged",
	results: { string },
}

return Rodux.makeActionCreator(script.Name, function(results: { string })
	return {
		results = results,
	}
end)
