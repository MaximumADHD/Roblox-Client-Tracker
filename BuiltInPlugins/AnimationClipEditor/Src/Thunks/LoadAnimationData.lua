--[[
	Resets the Animation Editor state and loads a new animation.
]]

local Plugin = script.Parent.Parent.Parent
local isEmpty = require(Plugin.Src.Util.isEmpty)
local Constants = require(Plugin.Src.Util.Constants)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)

local AddTrack = require(Plugin.Src.Thunks.AddTrack)
local SortAndSetTracks = require(Plugin.Src.Thunks.SortAndSetTracks)
local SetPast = require(Plugin.Src.Actions.SetPast)
local SetFuture = require(Plugin.Src.Actions.SetFuture)
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)
local SetIsDirty = require(Plugin.Src.Actions.SetIsDirty)
local UpdateEditingLength = require(Plugin.Src.Thunks.UpdateEditingLength)
local SetShowEvents = require(Plugin.Src.Actions.SetShowEvents)
local SwitchEditorMode = require(Plugin.Src.Thunks.SwitchEditorMode)
local SetSelectedTracks = require(Plugin.Src.Actions.SetSelectedTracks)
local SetRightClickContextInfo = require(Plugin.Src.Actions.SetRightClickContextInfo)
local SetInReviewState = require(Plugin.Src.Actions.SetInReviewState)
local SetLastSelectedPath = require(Plugin.Src.Actions.SetLastSelectedPath)

local GetFFlagFacialAnimationRecordingInStudio = require(Plugin.LuaFlags.GetFFlagFacialAnimationRecordingInStudio)
local GetFFlagFixFaceRecorderFlow = require(Plugin.LuaFlags.GetFFlagFixFaceRecorderFlow)

return function(animationData, analytics)
	return function(store)
		-- Remove potential change history waypoints
		store:dispatch(SetPast({}))
		store:dispatch(SetFuture({}))

		-- Reset all hanging data
		store:dispatch(SetSelectedTracks({}))
		store:dispatch(SetLastSelectedPath(nil))
		store:dispatch(SetRightClickContextInfo({}))
		store:dispatch(SetSelectedKeyframes({}))
		store:dispatch(SortAndSetTracks({}))

		-- Switch back to DopeSheet mode
		store:dispatch(SwitchEditorMode(Constants.EDITOR_MODE.DopeSheet, analytics))

		-- AddTrack needs to know if the animationData is a channel Animation.
		-- So we either pass that information as a flag to AddTrack, or we
		-- set the animation data in the store first. Since AddTrack is used
		-- in multiple places (where the animation data is available in the
		-- store) the latter is preferred.
		store:dispatch(UpdateAnimationData(animationData))

		for instanceName, instance in pairs(animationData.Instances) do
			for trackName, track in pairs(instance.Tracks) do
				local rotationType = TrackUtils.getRotationType(track)
				local eulerAnglesOrder = TrackUtils.getEulerAnglesOrder(track)
				store:dispatch(AddTrack(instanceName, trackName, track.Type, rotationType, eulerAnglesOrder, analytics))
			end
		end

		store:dispatch(StepAnimation(0))
		store:dispatch(SetIsDirty(true))
		store:dispatch(UpdateEditingLength(animationData.Metadata.EndTick))
		store:dispatch(SetShowEvents(not isEmpty(animationData.Events.Keyframes)))

		if not GetFFlagFixFaceRecorderFlow() then
			--in case the user was in review state of face capture and switched animation (like by create new animation) then
			--we exit out of review state
			if GetFFlagFacialAnimationRecordingInStudio() then
				store:dispatch(SetInReviewState(false))
			end
		end
	end
end
