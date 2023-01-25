local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: "ChatTopBarButtonActivated",
	isVisible: boolean,
}

return Rodux.makeActionCreator(script.Name, function(isVisible: boolean)
	return {
		isVisible = isVisible,
	}
end)
