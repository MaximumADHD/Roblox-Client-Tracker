--[[
	Pops the nearest waypoint off the Past stack so
	that the user can return to a previous AnimationData state.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local Cryo = require(Plugin.Packages.Cryo)

local SetFuture = require(Plugin.Src.Actions.SetFuture)
local SetPast = require(Plugin.Src.Actions.SetPast)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local SetSelectedTracks = require(Plugin.Src.Actions.SetSelectedTracks)
local SetInReviewState = require(Plugin.Src.Actions.SetInReviewState)

local SortAndSetTracks = require(Plugin.Src.Thunks.SortAndSetTracks)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

local TrackSelectionUtils = require(Plugin.Src.Util.TrackSelectionUtils)

local GetFFlagFixRedoDeleteSelection = require(Plugin.LuaFlags.GetFFlagFixRedoDeleteSelection)
local GetFFlagFacialAnimationRecordingInStudio = require(Plugin.LuaFlags.GetFFlagFacialAnimationRecordingInStudio)

return function(signals)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		local tracks = state.Status.Tracks
		local selectedTracks = state.Status.SelectedTracks
		local history = state.History
		local past = history.Past
		local future = history.Future

		if #past > 0 then
			--in case the user was in review state of face capture and pressed undo then, we exit out of review state
			if GetFFlagFacialAnimationRecordingInStudio() then
				store:dispatch(SetInReviewState(false))
			end			
			
			future = Cryo.List.join({
				{
					AnimationData = Cryo.Dictionary.join(animationData),
					Tracks = Cryo.List.join(tracks),
				},
			}, future)
			future = Cryo.List.filter(future, function(value, index)
				return (index <= history.MaxWaypointSize)
			end)
			store:dispatch(SetFuture(future))

			local newState = past[1]
			store:dispatch(UpdateAnimationData(newState.AnimationData))
			store:dispatch(SortAndSetTracks(newState.Tracks))
			store:dispatch(SetSelectedKeyframes({}))

			-- Prune selected tracks, as some tracks might have disappeared
			-- (Undoing a conversion from Quaternions to Euler's angles, for instance)
			local newSelectedTracks, changed = TrackSelectionUtils.PruneSelectedTracks(
				if GetFFlagFixRedoDeleteSelection() then newState.AnimationData else animationData, selectedTracks)
			if changed then
				store:dispatch(SetSelectedTracks(newSelectedTracks))
			end

			store:dispatch(SetPast(Cryo.List.removeIndex(past, 1)))
			if signals then
				local selectionSignal = signals:get(Constants.SIGNAL_KEYS.SelectionChanged)
				selectionSignal:Fire()
			end
		end
	end
end
