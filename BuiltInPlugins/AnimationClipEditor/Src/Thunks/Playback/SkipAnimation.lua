--[[
	Skips the playhead forward to the next keyframe, or to the
	end of the animation if no keyframes are left.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)

local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

return function(isForward, analytics)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		local tracks = state.Status.Tracks
		local playhead = state.Status.Playhead

		if not (animationData and animationData.Metadata and tracks) then
			return
		end

		local startTick = animationData.Metadata.StartTick
		local endTick = animationData.Metadata.EndTick
		if endTick - startTick == 0 then
			return
		end

		local newFrame

		if GetFFlagChannelAnimations() then
			local animTracks = {}
			for _, track in ipairs(tracks) do
				local instance = animationData.Instances[track.Instance]
				if instance and instance.Tracks[track.Name] then
					animTracks[track.Name] = instance.Tracks[track.Name]
				end
			end

			if isForward then
				newFrame = TrackUtils.getNextKeyframe(animTracks, playhead)
			else
				newFrame = TrackUtils.getPreviousKeyframe(animTracks, playhead)
			end
		else
			local animTracks = {}
			for _, track in ipairs(tracks) do
				local instance = animationData.Instances[track.Instance]
				if instance and instance.Tracks[track.Name] then
					animTracks[track] = {
						Keyframes = instance.Tracks[track.Name].Keyframes,
					}
				end
			end

			local summaryKeyframes
			if isForward then
				summaryKeyframes = TrackUtils.getSummaryKeyframes(
					animTracks, playhead + 1, endTick)
			else
				summaryKeyframes = TrackUtils.getSummaryKeyframes(
					animTracks, startTick, playhead - 1)
			end

			table.sort(summaryKeyframes)

			if isForward then
				newFrame = summaryKeyframes[1] or endTick
			else
				newFrame = summaryKeyframes[#summaryKeyframes] or startTick
			end
		end

		store:dispatch(StepAnimation(newFrame))

		if isForward then
			analytics:report("onControlPressed", "SkipForward")
		else
			analytics:report("onControlPressed", "SkipBackward")
		end
	end
end