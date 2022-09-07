--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)

local Actions = script.Parent.Parent.Actions
local SetMoreMenuOpen = require(Actions.SetMoreMenuOpen)
local SetBackpackOpen = require(Actions.SetBackpackOpen)
local SetEmotesOpen = require(Actions.SetEmotesOpen)
local SetLeaderboardOpen = require(Actions.SetLeaderboardOpen)
local SetEmotesEnabled = require(Actions.SetEmotesEnabled)

local initialState = {
	open = false,
	backpackOpen = false,
	leaderboardOpen = false,
	emotesOpen = false,
	emotesEnabled = true,
}

local MoreMenu = Rodux.createReducer(initialState, {
	[SetMoreMenuOpen.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			open = action.open,
		})
	end,

	[SetBackpackOpen.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			open = false,
			backpackOpen = action.open,
		})
	end,

	[SetEmotesOpen.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			open = false,
			emotesOpen = action.open,
		})
	end,

	[SetEmotesEnabled.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			emotesEnabled = action.enabled,
		})
	end,

	[SetLeaderboardOpen.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			open = false,
			leaderboardOpen = action.open,
		})
	end,
})

return MoreMenu
