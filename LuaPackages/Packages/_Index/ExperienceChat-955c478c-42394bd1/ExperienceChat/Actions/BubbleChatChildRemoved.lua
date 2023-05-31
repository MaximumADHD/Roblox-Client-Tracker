local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Rodux = require(ProjectRoot.Rodux)

export type Action = {
	type: "BubbleChatChildRemoved",
	childName: string,
}

return Rodux.makeActionCreator(script.Name, function(childName: string)
	return {
		childName = childName,
	}
end)
