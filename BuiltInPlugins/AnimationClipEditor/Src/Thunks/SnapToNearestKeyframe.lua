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
local AnimationData = require(Plugin.Src.Util.AnimationData)

local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)

return function(tck, trackWidth)
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

		local tracks
		if GetFFlagCurveEditor() and state.Status.EditorMode == Constants.EDITOR_MODE.CurveCanvas then
			tracks = {}
			for _, selectedTrack in ipairs(state.Status.SelectedTracks or {}) do
				table.insert(tracks, AnimationData.getTrack(animationData, "Root", selectedTrack))
			end
		else
			tracks = root.Tracks
		end

		local snapped = false
		local snapTick = tck
		if tracks then
			local scroll = GetFFlagCurveEditor() and state.Status.HorizontalScroll or state.Status.Scroll
			local zoom = GetFFlagCurveEditor() and state.Status.HorizontalZoom or state.Status.Zoom
			local editingLength = state.Status.EditingLength
			local range = TrackUtils.getZoomRange(animationData, scroll, zoom, editingLength)

			local framePosition = TrackUtils.getScaledKeyframePosition(tck, range.Start, range.End, trackWidth)

			local closestKey = range.End + 1
			for _, track in pairs(tracks) do
				TrackUtils.traverseTracks(nil, track, function(t)
					if t.Keyframes and #t.Keyframes > 0 then
						local first, second = KeyframeUtil.findNearestKeyframes(t.Keyframes, tck)
						if math.abs(t.Keyframes[first] - tck) < math.abs(tck - closestKey) then
							closestKey = t.Keyframes[first]
						end
						if second and math.abs(t.Keyframes[second] - tck) < math.abs(tck - closestKey) then
							closestKey = t.Keyframes[second]
						end
					end
				end, true)
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
			store:dispatch(SnapToNearestFrame(tck))
		end
	end
end
