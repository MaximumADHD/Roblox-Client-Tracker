local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: "ChatLayoutHorizontalAlignmentChanged",
	value: Enum.HorizontalAlignment,
}

return Rodux.makeActionCreator(script.Name, function(value: any)
	return {
		value = value,
	}
end)
