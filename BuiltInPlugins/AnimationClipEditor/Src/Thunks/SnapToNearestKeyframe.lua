--[[
	Given a tick, attempts to find the nearest keyframe within a determined amount of
	pixels on the Dope Sheet. If there are multiple keyframes that satisfy this, then
	the closet keyframe out of them is chosen. If there are no keyframes that satisfy
	this, then scrubbing behaves as normal.
]]

local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local KeyframeUtil = require(Plugin.Src.Util.KeyframeUtils)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)
local SnapToNearestFrame = require(Plugin.Src.Thunks.SnapToNearestFrame)

local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)
local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)

return function(tick, trackWidth)
	return function(store)
		local state = store:getState()

		local animationData = state.AnimationData
		if not animationData then
			return
		end

		local instances = animationData.Instances
		if not instances then
			return
		end

		local root = instances.Root
		if not root then
			return
		end

		local tracks = root.Tracks

		local snapped = false
		local snapTick = tick
		if tracks then
			local scroll = GetFFlagCurveEditor() and state.Status.HorizontalScroll or state.Status.Scroll
			local zoom = GetFFlagCurveEditor() and state.Status.HorizontalZoom or state.Status.Zoom
			local editingLength = state.Status.EditingLength
			local range = TrackUtils.getZoomRange(animationData, scroll, zoom, editingLength)

			local framePosition = TrackUtils.getScaledKeyframePosition(tick, range.Start, range.End, trackWidth)

			local closestKey = range.End + 1
			for _, track in pairs(tracks) do
				if GetFFlagChannelAnimations() then
					TrackUtils.traverseTracks(nil, track, function(t)
						if t.Keyframes and #t.Keyframes > 0 then
							local first, second = KeyframeUtil.findNearestKeyframes(t.Keyframes, tick)
							if math.abs(t.Keyframes[first] - tick) < math.abs(tick - closestKey) then
								closestKey = t.Keyframes[first]
							end
							if second and math.abs(t.Keyframes[second] - tick) < math.abs(tick - closestKey) then
								closestKey = t.Keyframes[second]
							end
						end
					end, true)
				else
					if track.Keyframes and #track.Keyframes > 0 then
						local first, second = KeyframeUtil.findNearestKeyframes(track.Keyframes, tick)
						if math.abs(track.Keyframes[first] - tick) < math.abs(tick - closestKey) then
							closestKey = track.Keyframes[first]
						end
						if second and math.abs(track.Keyframes[second] - tick) < math.abs(tick - closestKey) then
							closestKey = track.Keyframes[second]
						end
					end
				end
			end

			if closestKey >= range.Start and closestKey <= range.End then
				local closestKeyPosition = TrackUtils.getScaledKeyframePosition(closestKey, range.Start, range.End, trackWidth)
				if math.abs(closestKeyPosition - framePosition) < Constants.SNAP_TO_KEYFRAME_THRESHOLD then
					snapTick = closestKey
					snapped = true
				end
			end
		end

		if snapped then
			store:dispatch(StepAnimation(snapTick))
		else
			-- We didn't snap to a keyframe, but we still need to snap to the frames
			store:dispatch(SnapToNearestFrame(tick))
		end
	end
end
