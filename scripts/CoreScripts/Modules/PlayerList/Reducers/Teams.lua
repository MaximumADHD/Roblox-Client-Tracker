local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)

local Actions = script.Parent.Parent.Actions
local AddTeam = require(Actions.AddTeam)
local RemoveTeam = require(Actions.RemoveTeam)

local Teams = Rodux.createReducer({}, {
	[AddTeam.name] = function(state, action)
		return Cryo.List.join(state, {action.team})
	end,

	[RemoveTeam.name] = function(state, action)
		return Cryo.List.filter(state, function(team)
			return team ~= action.team
		end)
	end,
})

return Teams