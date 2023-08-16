local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "ClientSettingsLoaded",
	value: { [string]: any },
}

return Rodux.makeActionCreator(script.Name, function(info)
	return {
		value = { preferredTransparency = info.preferredTransparency or 1.0 },
	}
end)
