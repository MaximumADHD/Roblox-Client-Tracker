local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

export type Action = {
	type: "LocalTeamChanged",
	team: Team,
}

return Rodux.makeActionCreator(script.Name, function(team: Team)
	return {
		team = team,
	}
end)
