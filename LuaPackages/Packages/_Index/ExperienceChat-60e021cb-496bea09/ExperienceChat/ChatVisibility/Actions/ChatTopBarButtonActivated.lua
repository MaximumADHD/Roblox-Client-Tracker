local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

return Rodux.makeActionCreator(script.Name, function(isVisible: boolean): table
	return {
		isVisible = isVisible,
	}
end)
