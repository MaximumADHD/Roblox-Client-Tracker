local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)
local Cryo = require(CorePackages.Packages.Cryo)

local Actions = script.Parent.Parent.Actions
local AddPlayerToTeam = require(Actions.AddPlayerToTeam)
local RemovePlayerFromTeam = require(Actions.RemovePlayerFromTeam)
local RemovePlayer = require(Actions.RemovePlayer)

local PlayerTeam = Rodux.createReducer({}, {
	[AddPlayerToTeam.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.player.UserId] = action.team,
		})
	end,

	[RemovePlayerFromTeam.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.player.UserId] = Cryo.None,
		})
	end,

	[RemovePlayer.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.player.UserId] = Cryo.None,
		})
	end,
})

return PlayerTeam
