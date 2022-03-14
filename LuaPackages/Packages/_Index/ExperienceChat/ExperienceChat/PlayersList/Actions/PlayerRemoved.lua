local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.makeActionCreator(script.Name, function(displayName: string, userId: number): table
	return {
		displayName = displayName,
		userId = userId,
	}
end)
