local Plugin = script.Parent.Parent.Parent

local Dash = require(Plugin.Packages.Dash)
local Rodux = require(Plugin.Packages.Rodux)

local EditingMode = require(Plugin.Src.Utility.EditingMode)
local StatusMessage = require(Plugin.Src.Utility.StatusMessage)

local BeginSelectingPivot = require(Plugin.Src.Actions.BeginSelectingPivot)
local DoneSelectingPivot = require(Plugin.Src.Actions.DoneSelectingPivot)
local SelectObjectForEditing = require(Plugin.Src.Actions.SelectObjectForEditing)
local SelectInvalidSelection = require(Plugin.Src.Actions.SelectInvalidSelection)

local join = Dash.join

local initialState = {
	-- The object to edit the pivot for
	targetObject = nil,

	-- Editing mode (in what way are we editing the pivot)
	editingMode = EditingMode.None,

	-- Message describing what the user should do
	statusMessage = StatusMessage.None,
}

return Rodux.createReducer(initialState, {
	[BeginSelectingPivot.name] = function(state, action)
		return join(state, {
			editingMode = action.editingMode,
			statusMessage = action.statusMessage,
		})
	end,
	[DoneSelectingPivot.name] = function(state, action)
		return join(state, {
			editingMode = EditingMode.Transform,
			statusMessage = StatusMessage.None,
		})
	end,
	[SelectObjectForEditing.name] = function(state, action)
		return join(state, {
			targetObject = action.targetObject,
			editingMode = EditingMode.Transform,
			statusMessage = StatusMessage.None,
		})
	end,
	[SelectInvalidSelection.name] = function(state, action)
		return join(state, {
			targetObject = Dash.None,
			editingMode = EditingMode.None,
			statusMessage = action.statusMessage,
		})
	end,
})