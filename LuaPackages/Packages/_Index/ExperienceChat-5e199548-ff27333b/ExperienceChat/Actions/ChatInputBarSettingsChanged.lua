local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: "ChatInputBarSettingsChanged",
	property: string,
	value: any,
}

return Rodux.makeActionCreator(script.Name, function(property: string, value: any)
	return {
		property = property,
		value = value,
	}
end)
