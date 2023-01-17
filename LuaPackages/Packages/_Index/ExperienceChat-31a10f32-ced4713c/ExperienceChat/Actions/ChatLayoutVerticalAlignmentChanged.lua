local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: "ChatLayoutVerticalAlignmentChanged",
	value: Enum.VerticalAlignment,
}

return Rodux.makeActionCreator(script.Name, function(value: any)
	return {
		value = value,
	}
end)
