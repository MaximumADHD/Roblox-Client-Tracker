local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)
local Cryo = require(CorePackages.Packages.Cryo)

local Actions = script.Parent.Parent.Actions
local AddPlayer = require(Actions.AddPlayer)
local RemovePlayer = require(Actions.RemovePlayer)

local Players = Rodux.createReducer({}, {
	[AddPlayer.name] = function(state, action)
		return Cryo.List.join(state, { action.player })
	end,

	[RemovePlayer.name] = function(state, action)
		return Cryo.List.filter(state, function(player)
			return player ~= action.player
		end)
	end,
})

return Players
