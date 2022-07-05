local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "ClientAppLoaded",
	team: Team?,
}

return Rodux.makeActionCreator(script.Name, function(info)
	return {
		team = info.team,
	}
end)
