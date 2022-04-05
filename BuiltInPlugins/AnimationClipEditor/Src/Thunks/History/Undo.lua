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

local SortAndSetTracks = require(Plugin.Src.Thunks.SortAndSetTracks)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

local TrackSelectionUtils = require(Plugin.Src.Util.TrackSelectionUtils)

local GetFFlagQuaternionsUI = require(Plugin.LuaFlags.GetFFlagQuaternionsUI)

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
			if GetFFlagQuaternionsUI() then
				local newSelectedTracks, changed = TrackSelectionUtils.PruneSelectedTracks(animationData, selectedTracks)
				if changed then
					store:dispatch(SetSelectedTracks(newSelectedTracks))
				end
			end

			store:dispatch(SetPast(Cryo.List.removeIndex(past, 1)))
			if signals then
				local selectionSignal = signals:get(Constants.SIGNAL_KEYS.SelectionChanged)
				selectionSignal:Fire()
			end
		end
	end
end