--!strict
--[[
	Promotes a Keyframe animation to Channels.
]]
local Plugin = script.Parent.Parent.Parent

local AnimationData = require(Plugin.Src.Util.AnimationData)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)

local SetFuture = require(Plugin.Src.Actions.SetFuture)
local SetPast = require(Plugin.Src.Actions.SetPast)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local SortAndSetTracks = require(Plugin.Src.Thunks.SortAndSetTracks)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

local Types = require(Plugin.Src.Types)

return function(): (Types.Store) -> ()
	return function(store: Types.Store): ()
		local state = store:getState()
		local animationData = state.AnimationData

		if not animationData or not animationData.Metadata or animationData.Metadata.IsChannelAnimation then
			return
		end

		local rotationType = state.Status.DefaultRotationType
		local eulerAnglesOrder = state.Status.DefaultEulerAnglesOrder

		-- Remove potential change history waypoints
		store:dispatch(SetPast({}))
		store:dispatch(SetFuture({}))

		-- Reset all hanging data
		store:dispatch(SetSelectedKeyframes({}))

		local newData = deepCopy(animationData)
		AnimationData.promoteToChannels(newData, rotationType, eulerAnglesOrder)

		local tracks = state.Status.Tracks

		for _, track in ipairs(tracks) do
			TrackUtils.createTrackListEntryComponents(track, track.Instance, rotationType, eulerAnglesOrder)
			track.EulerAnglesOrder = nil
		end

		store:dispatch(SortAndSetTracks(tracks))
		store:dispatch(UpdateAnimationData(newData))
	end
end
