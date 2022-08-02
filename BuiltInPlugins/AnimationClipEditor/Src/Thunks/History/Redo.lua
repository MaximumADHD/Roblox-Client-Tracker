--[[
	Pops the nearest waypoint off of the Future stack so
	that the user can revert their most recent Undo action.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local SetFuture = require(Plugin.Src.Actions.SetFuture)
local SetPast = require(Plugin.Src.Actions.SetPast)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local SetSelectedTracks = require(Plugin.Src.Actions.SetSelectedTracks)

local SortAndSetTracks = require(Plugin.Src.Thunks.SortAndSetTracks)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

local TrackSelectionUtils = require(Plugin.Src.Util.TrackSelectionUtils)

local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)
local GetFFlagFixRedoDeleteSelection = require(Plugin.LuaFlags.GetFFlagFixRedoDeleteSelection)

return function()
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		local tracks = state.Status.Tracks
		local selectedTracks = state.Status.SelectedTracks
		local history = state.History
		local past = history.Past
		local future = history.Future

		if #future > 0 then
			past = Cryo.List.join({
				{
					AnimationData = Cryo.Dictionary.join(animationData),
					Tracks = Cryo.List.join(tracks),
				},
			}, past)
			past = Cryo.List.filter(past, function(value, index)
				return (index <= history.MaxWaypointSize)
			end)
			store:dispatch(SetPast(past))

			local newState = future[1]
			store:dispatch(UpdateAnimationData(newState.AnimationData))
			store:dispatch(SortAndSetTracks(newState.Tracks))
			store:dispatch(SetSelectedKeyframes({}))

			-- Prune selected tracks, as some tracks might have disappeared
			-- This use case does not happen for now, but it might in the future.
			-- This is added to mirror the behavior of Undo
			if GetFFlagCurveEditor() then
				local newSelectedTracks, changed = TrackSelectionUtils.PruneSelectedTracks(
					if GetFFlagFixRedoDeleteSelection() then newState.AnimationData else animationData, selectedTracks)
				if changed then
					store:dispatch(SetSelectedTracks(newSelectedTracks))
				end
			end

			store:dispatch(SetFuture(Cryo.List.removeIndex(future, 1)))
		end
	end
end
