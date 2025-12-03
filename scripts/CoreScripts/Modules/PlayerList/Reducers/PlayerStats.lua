--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)
local Cryo = require(CorePackages.Packages.Cryo)

local Actions = script.Parent.Parent.Actions
local AddPlayer = require(Actions.AddPlayer)
local RemovePlayer = require(Actions.RemovePlayer)
local SetPlayerLeaderstat = require(Actions.SetPlayerLeaderstat)

local PlayerStats = Rodux.createReducer({}, {
	[AddPlayer.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.userId] = {},
		})
	end,

	[RemovePlayer.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.userId] = Cryo.None,
		})
	end,

	[SetPlayerLeaderstat.name] = function(state, action)
		if state[action.userId] == nil then
			return state
		end
		return Cryo.Dictionary.join(state, {
			[action.userId] = Cryo.Dictionary.join(state[action.userId], {
				[action.leaderstat] = action.value,
			}),
		})
	end,
})

return PlayerStats
