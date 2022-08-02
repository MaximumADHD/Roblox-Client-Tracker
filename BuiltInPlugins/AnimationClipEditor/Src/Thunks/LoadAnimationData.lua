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
local SetEditorMode = require(Plugin.Src.Actions.SetEditorMode)
local SetSelectedTracks = require(Plugin.Src.Actions.SetSelectedTracks)
local SetRightClickContextInfo = require(Plugin.Src.Actions.SetRightClickContextInfo)
local SetLastSelectedPath = require(Plugin.Src.Actions.SetLastSelectedPath)

local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)
local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)
local GetFFlagCurveAnalytics = require(Plugin.LuaFlags.GetFFlagCurveAnalytics)
local GetFFlagFixTrackListSelection = require(Plugin.LuaFlags.GetFFlagFixTrackListSelection)

return function(animationData, analytics)
	return function(store)
		-- Remove potential change history waypoints
		store:dispatch(SetPast({}))
		store:dispatch(SetFuture({}))

		-- Reset all hanging data
		store:dispatch(SetSelectedTracks({}))
		if GetFFlagFixTrackListSelection() then
			store:dispatch(SetLastSelectedPath(nil))
		end
		store:dispatch(SetRightClickContextInfo({}))
		store:dispatch(SetSelectedKeyframes({}))
		store:dispatch(SortAndSetTracks({}))

		-- Switch back to DopeSheet mode
		if GetFFlagCurveEditor() then
			if GetFFlagCurveAnalytics() then
				store:dispatch(SwitchEditorMode(Constants.EDITOR_MODE.DopeSheet, analytics))
			else
				store:dispatch(SetEditorMode(Constants.EDITOR_MODE.DopeSheet))
			end
		end

		if GetFFlagChannelAnimations() then
			-- AddTrack needs to know if the animationData is a channel Animation.
			-- So we either pass that information as a flag to AddTrack, or we
			-- set the animation data in the store first. Since AddTrack is used
			-- in multiple places (where the animation data is available in the
			-- store) the latter is preferred.
			store:dispatch(UpdateAnimationData(animationData))
		end

		for instanceName, instance in pairs(animationData.Instances) do
			for trackName, track in pairs(instance.Tracks) do
				if GetFFlagCurveEditor() then
					local rotationType = TrackUtils.getRotationType(track)
					local eulerAnglesOrder = TrackUtils.getEulerAnglesOrder(track)
					store:dispatch(AddTrack(instanceName, trackName, track.Type, rotationType, eulerAnglesOrder, analytics))
				elseif GetFFlagFacialAnimationSupport() or GetFFlagChannelAnimations() then
					store:dispatch(AddTrack(instanceName, trackName, track.Type, analytics))
				else
					store:dispatch(AddTrack(instanceName, trackName, analytics))
				end
			end
		end

		if not GetFFlagChannelAnimations() then
			store:dispatch(UpdateAnimationData(animationData))
		end
		store:dispatch(StepAnimation(0))
		store:dispatch(SetIsDirty(true))
		store:dispatch(UpdateEditingLength(animationData.Metadata.EndTick))
		store:dispatch(SetShowEvents(not isEmpty(animationData.Events.Keyframes)))
	end
end
