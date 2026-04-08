local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Cryo = require(Packages.Cryo)
local MomentsCommon = require(Packages.MomentsCommon)
local Rodux = require(Packages.Rodux)

local ClearEdits = require(MomentsCreationFlow.Actions.ClearEdits)
local CreationFlowState = require(MomentsCreationFlow.Enums.CreationFlowState)
local CreationFlowStateUpdated = require(MomentsCreationFlow.Actions.CreationFlowStateUpdated)
local DescriptionUpdated = require(MomentsCreationFlow.Actions.DescriptionUpdated)
local MusicEditUpdated = require(MomentsCreationFlow.Actions.MusicEditUpdated)
local MusicSearchRetrieved = require(MomentsCreationFlow.Actions.MusicSearchRetrieved)
local SelectedCaptureUpdated = require(MomentsCreationFlow.Actions.SelectedCaptureUpdated)
local TextOverlayEditsUpdated = require(MomentsCreationFlow.Actions.TextOverlayEditsUpdated)
local TrimEditUpdated = require(MomentsCreationFlow.Actions.TrimEditUpdated)

type TextOverlayEdit = MomentsCommon.TextOverlayEdit
type MusicEdit = MomentsCommon.MusicEdit
type TrimEdit = MomentsCommon.TrimEdit

export type State = {
	active: boolean,
	capture: Capture,
	currentState: CreationFlowState.CreationFlowState,
	description: string,
	musicList: { number },
	musicEdit: MusicEdit?,
	textOverlayEdits: { TextOverlayEdit }?,
	trimEdit: TrimEdit?,
}

local initialState: State = {
	active = false,
	capture = nil,
	currentState = CreationFlowState.Gallery,
	description = "",
	musicList = {},
	musicEdit = nil,
	textOverlayEdits = nil,
	trimEdit = nil,
}

return Rodux.createReducer(initialState, {
	[CreationFlowStateUpdated.name] = function(state: State, action: CreationFlowStateUpdated.Type): State
		return Cryo.Dictionary.union(state, {
			currentState = action.currentState,
		})
	end,

	[MusicSearchRetrieved.name] = function(state: State, action: MusicSearchRetrieved.Type): State
		return Cryo.Dictionary.union(state, {
			musicList = action.musics,
		})
	end,

	[SelectedCaptureUpdated.name] = function(state: State, action: SelectedCaptureUpdated.Type): State
		return Cryo.Dictionary.union(state, {
			capture = action.capture,
		})
	end,

	[TextOverlayEditsUpdated.name] = function(state: State, action: TextOverlayEditsUpdated.Type): State
		return Cryo.Dictionary.union(state, {
			textOverlayEdits = action.textOverlayEdits,
		})
	end,

	[TrimEditUpdated.name] = function(state: State, action: TrimEditUpdated.Type): State
		return Cryo.Dictionary.union(state, {
			trimEdit = action.trimEdit,
		})
	end,

	[MusicEditUpdated.name] = function(state: State, action: MusicEditUpdated.Type): State
		return Cryo.Dictionary.union(state, {
			musicEdit = action.musicEdit,
		})
	end,

	[DescriptionUpdated.name] = function(state: State, action: DescriptionUpdated.Type): State
		return Cryo.Dictionary.union(state, {
			description = action.description,
		})
	end,

	[ClearEdits.name] = function(_state: State, action: ClearEdits.Type): State
		return {
			active = true,
			capture = nil,
			currentState = action.newState,
			description = "",
			musicList = {},
			musicEdit = nil,
			textOverlayEdits = nil,
			trimEdit = nil,
		}
	end,
})
