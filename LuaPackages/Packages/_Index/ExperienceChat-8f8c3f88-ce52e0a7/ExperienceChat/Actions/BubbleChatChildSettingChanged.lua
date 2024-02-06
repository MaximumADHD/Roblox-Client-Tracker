local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: "BubbleChatChildSettingChanged",
	childName: string,
	property: string,
	value: any,
}

return Rodux.makeActionCreator(script.Name, function(childName: string, property: string, value: any)
	return {
		childName = childName,
		property = property,
		value = value,
	}
end)
