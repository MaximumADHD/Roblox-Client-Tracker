local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "ChatWindowMessagesCleared",
}

return Rodux.makeActionCreator(script.Name, function()
	return {}
end)
