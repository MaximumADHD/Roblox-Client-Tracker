local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "DevTextBoxEnabledChanged",
	enabled: boolean,
}

return Rodux.makeActionCreator(script.Name, function(enabled: boolean)
	return {
		enabled = enabled,
	}
end)
