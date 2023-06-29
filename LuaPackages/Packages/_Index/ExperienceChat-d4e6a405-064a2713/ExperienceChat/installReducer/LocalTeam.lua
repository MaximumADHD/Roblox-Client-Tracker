local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

local ClientAppLoaded = require(ExperienceChat.Actions.ClientAppLoaded)
local LocalTeamChanged = require(ExperienceChat.Actions.LocalTeamChanged)

return Rodux.createReducer(nil, {
	[LocalTeamChanged.name] = function(_state, action: LocalTeamChanged.Action)
		return action.team
	end :: any,

	[ClientAppLoaded.name] = function(_state, action: ClientAppLoaded.Action)
		return action.team
	end :: any,
})
