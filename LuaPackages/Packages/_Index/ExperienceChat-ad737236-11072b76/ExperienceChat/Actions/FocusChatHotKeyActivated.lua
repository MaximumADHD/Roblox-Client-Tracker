local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "FocusChatHotKeyActivated",
}

return Rodux.makeActionCreator(script.Name, function()
	return {}
end)
