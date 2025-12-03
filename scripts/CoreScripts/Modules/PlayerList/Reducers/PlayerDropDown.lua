--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)

local Actions = script.Parent.Parent.Actions
local OpenPlayerDropDown = require(Actions.OpenPlayerDropDown)
local ClosePlayerDropDown = require(Actions.ClosePlayerDropDown)
local RemovePlayer = require(Actions.RemovePlayer)
local SetPlayerListVisibility = require(Actions.SetPlayerListVisibility)

local FFlagAddNewPlayerListMobileFocusNav = PlayerListPackage.Flags.FFlagAddNewPlayerListMobileFocusNav

local defaultState = {
	isVisible = false,
	selectedPlayer = nil,
}

local PlayerDropDown = Rodux.createReducer(defaultState, {
	[SetPlayerListVisibility.name] = function(state, action)
		if not action.isVisible then
			return {
				isVisible = false,
				selectedPlayer = if FFlagAddNewPlayerListMobileFocusNav then nil else state.selectedPlayer,
			}
		end
		return state
	end,

	[OpenPlayerDropDown.name] = function(state, action)
		return {
			isVisible = true,
			selectedPlayer = action.selectedPlayer,
		}
	end,

	[ClosePlayerDropDown.name] = function(state, action)
		return {
			isVisible = false,
			selectedPlayer = state.selectedPlayer,
		}
	end,

	[RemovePlayer.name] = function(state, action)
		if action.player == state.selectedPlayer then
			return {
				isVisible = false,
				selectedPlayer = nil,
			}
		end
		return state
	end,
})

return PlayerDropDown
