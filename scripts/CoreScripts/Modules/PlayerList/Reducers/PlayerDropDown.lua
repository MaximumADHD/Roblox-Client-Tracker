local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local Actions = script.Parent.Parent.Actions
local OpenPlayerDropDown = require(Actions.OpenPlayerDropDown)
local ClosePlayerDropDown = require(Actions.ClosePlayerDropDown)
local RemovePlayer = require(Actions.RemovePlayer)

local defaultState = {
	isVisible = false,
	selectedPlayer = nil,
}

local PlayerDropDown = Rodux.createReducer(defaultState, {
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