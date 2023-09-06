local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: "ChatWindowConfigurationEnabled",
	enabled: boolean,
}

return Rodux.makeActionCreator(script.Name, function(enabled: boolean)
	return {
		enabled = enabled,
	}
end)
