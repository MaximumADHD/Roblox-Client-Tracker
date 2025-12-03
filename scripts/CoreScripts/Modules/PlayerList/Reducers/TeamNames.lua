--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)
local Cryo = require(CorePackages.Packages.Cryo)

local Actions = script.Parent.Parent.Actions
local AddTeam = require(Actions.AddTeam)
local RemoveTeam = require(Actions.RemoveTeam)
local SetTeamName = require(Actions.SetTeamName)

local TeamNames = Rodux.createReducer({}, {
	[AddTeam.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.team] = action.team.Name,
		})
	end,

	[RemoveTeam.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.team] = Cryo.None,
		})
	end,

	[SetTeamName.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.team] = action.teamName,
		})
	end,
})

return TeamNames
