local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: "LegacyBubbleChatEnabledChanged",
	property: string,
	value: any,
}

return Rodux.makeActionCreator(script.Name, function(value: boolean)
	return {
		value = value,
	}
end)
