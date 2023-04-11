local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local Dash = require(Packages.Dash)
local Rodux = require(Packages.Rodux)
local SetProfilePeekViewState = require(script.Parent.Parent.Actions.SetProfilePeekViewState)

export type State = {
	viewState: any?,
}

local initialState = {
	viewState = nil,
}

return Rodux.createReducer(initialState, {
	[SetProfilePeekViewState.name] = function(state: State, action: SetProfilePeekViewState.Type): State
		return Dash.join(state, {
			viewState = action.viewState,
		})
	end,
})
