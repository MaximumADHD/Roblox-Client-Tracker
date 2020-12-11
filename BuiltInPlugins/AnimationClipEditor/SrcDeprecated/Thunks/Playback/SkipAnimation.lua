--[[
	Skips the playhead forward to the next keyframe, or to the
	end of the animation if no keyframes are left.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local TrackUtils = require(Plugin.SrcDeprecated.Util.TrackUtils)
local StepAnimation = require(Plugin.SrcDeprecated.Thunks.Playback.StepAnimation)

return function(isForward)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		local tracks = state.Status.Tracks
		local playhead = state.Status.Playhead

		if not (animationData and animationData.Metadata and tracks) then
			return
		end

		local startFrame = animationData.Metadata.StartFrame
		local endFrame = animationData.Metadata.EndFrame
		if endFrame - startFrame == 0 then
			return
		end

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
				animTracks, playhead + 1, endFrame)
		else
			summaryKeyframes = TrackUtils.getSummaryKeyframes(
				animTracks, startFrame, playhead - 1)
		end

		table.sort(summaryKeyframes)

		local newFrame
		if isForward then
			newFrame = summaryKeyframes[1] or endFrame
		else
			newFrame = summaryKeyframes[#summaryKeyframes] or startFrame
		end

		store:dispatch(StepAnimation(newFrame))

		if isForward then
			store:getState().Analytics:onControlPressed("SkipForward")
		else
			store:getState().Analytics:onControlPressed("SkipBackward")
		end
	end
end