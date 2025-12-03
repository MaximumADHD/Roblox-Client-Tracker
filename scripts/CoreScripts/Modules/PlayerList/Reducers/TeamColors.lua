--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)
local Cryo = require(CorePackages.Packages.Cryo)

local Actions = script.Parent.Parent.Actions
local AddTeam = require(Actions.AddTeam)
local RemoveTeam = require(Actions.RemoveTeam)
local SetTeamColor = require(Actions.SetTeamColor)

local TeamColors = Rodux.createReducer({}, {
	[AddTeam.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.team] = action.team.TeamColor,
		})
	end,

	[RemoveTeam.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.team] = Cryo.None,
		})
	end,

	[SetTeamColor.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.team] = action.teamColor,
		})
	end,
})

return TeamColors
