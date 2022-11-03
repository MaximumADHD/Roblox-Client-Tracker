local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "ClientAppLoaded",
	team: Team?,
	isChatCoreGuiEnabled: boolean,
}

return Rodux.makeActionCreator(script.Name, function(info)
	return {
		team = info.team,
		isChatCoreGuiEnabled = if info.isChatCoreGuiEnabled == nil then true else info.isChatCoreGuiEnabled,
	}
end)
