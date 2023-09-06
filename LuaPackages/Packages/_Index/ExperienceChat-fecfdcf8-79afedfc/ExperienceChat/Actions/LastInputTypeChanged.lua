local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: string,
	lastInputTypeUsed: Enum.UserInputType,
}

return Rodux.makeActionCreator(script.Name, function(lastInputTypeUsed: Enum.UserInputType)
	return {
		lastInputTypeUsed = lastInputTypeUsed,
	}
end)
