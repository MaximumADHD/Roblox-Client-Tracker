--[[
	Skips the playhead forward to the next keyframe, or to the
	end of the animation if no keyframes are left.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)

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

		store:dispatch(StepAnimation(newFrame))

		if isForward then
			analytics:report("onControlPressed", "SkipForward")
		else
			analytics:report("onControlPressed", "SkipBackward")
		end
	end
end
