local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.makeActionCreator(script.Name, function(enabled: boolean): table
	return {
		enabled = enabled,
	}
end)
