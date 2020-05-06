local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)

local Actions = script.Parent.Parent.Actions
local SetMoreMenuOpen = require(Actions.SetMoreMenuOpen)
local SetBackpackOpen = require(Actions.SetBackpackOpen)
local SetEmotesOpen = require(Actions.SetEmotesOpen)
local SetLeaderboardOpen = require(Actions.SetLeaderboardOpen)
local SetEmotesEnabled = require(Actions.SetEmotesEnabled)

local FFlagTopBarCloseContextMenuWhenHotkeysUsed = game:DefineFastFlag(
	"TopBarCloseContextMenuWhenHotkeysUsed", false
)

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
		if FFlagTopBarCloseContextMenuWhenHotkeysUsed then
			return Cryo.Dictionary.join(state, {
				open = false,
				backpackOpen = action.open,
			})
		else
			return Cryo.Dictionary.join(state, {
				backpackOpen = action.open,
			})
		end
	end,

	[SetEmotesOpen.name] = function(state, action)
		if FFlagTopBarCloseContextMenuWhenHotkeysUsed then
			return Cryo.Dictionary.join(state, {
				open = false,
				emotesOpen = action.open,
			})
		else
			return Cryo.Dictionary.join(state, {
				emotesOpen = action.open,
			})
		end
	end,

	[SetEmotesEnabled.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			emotesEnabled = action.enabled,
		})
	end,

	[SetLeaderboardOpen.name] = function(state, action)
		if FFlagTopBarCloseContextMenuWhenHotkeysUsed then
			return Cryo.Dictionary.join(state, {
				open = false,
				leaderboardOpen = action.open,
			})
		else
			return Cryo.Dictionary.join(state, {
				leaderboardOpen = action.open,
			})
		end
	end,
})

return MoreMenu
