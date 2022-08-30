local Plugin = script.Parent.Parent.Parent

local SetHorizontalScrollZoom = require(Plugin.Src.Actions.SetHorizontalScrollZoom)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local Constants = require(Plugin.Src.Util.Constants)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local SetAnimationData = require(Plugin.Src.Actions.SetAnimationData)
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)
local SetNotification = require(Plugin.Src.Actions.SetNotification)
local UpdateEditingLength = require(Plugin.Src.Thunks.UpdateEditingLength)

return function(animationData)
	return function(store)
		local state = store:getState()

		if not animationData then
			return
		end

		if not animationData.Metadata then
			store:dispatch(SetAnimationData(animationData))
			return
		end

		local scroll = state.Status.HorizontalScroll
		local zoom = state.Status.HorizontalZoom
		local playhead = state.Status.Playhead
		local editingLength = state.Status.EditingLength

		local startTick = animationData.Metadata.StartTick
		local range = TrackUtils.getZoomRange(animationData, scroll, zoom, editingLength)

		local removed = AnimationData.removeExtraKeyframes(animationData)
		if removed then
			store:dispatch(SetNotification("ClippedWarning", true))
		end

		AnimationData.setEndTick(animationData)
		local newEndTick = animationData.Metadata.EndTick

		for _, tck in ipairs(animationData.Events.Keyframes) do
			if tck > newEndTick then
				animationData.Metadata.EndTick = tck
				newEndTick = tck
			end
		end

		-- Legacy keyframe renaming support: Remove any keyframe name
		-- labels that are attached to nonexistent keyframes
		AnimationData.validateKeyframeNames(animationData)

		store:dispatch(SetAnimationData(animationData))

		if startTick ~= newEndTick then
			playhead = math.clamp(playhead, startTick, newEndTick)
		end
		store:dispatch(StepAnimation(playhead))

		local length = newEndTick - startTick

		-- Adjust the timeline length if the animation extends past the visible area.
		-- Adjust the zoom level so that the timeline does not zoom out when it is adjusted.
		if length > editingLength then
			store:dispatch(UpdateEditingLength(length))
			local lengthWithPadding = math.ceil(length * Constants.LENGTH_PADDING)
			local rangeLength = range.End - range.Start

			scroll = 0
			if lengthWithPadding ~= rangeLength then
				scroll = math.clamp((range.Start - startTick) / (lengthWithPadding - rangeLength), 0, 1)
			end
			zoom = 1 - math.clamp(rangeLength / lengthWithPadding, 0, 1)

			store:dispatch(SetHorizontalScrollZoom(scroll, zoom))
		end
	end
end
