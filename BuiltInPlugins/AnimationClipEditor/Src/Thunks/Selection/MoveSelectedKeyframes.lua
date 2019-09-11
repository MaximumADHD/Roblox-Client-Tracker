--[[
	Moves all keyframes in the selection to newFrame.

	pivotFrame is the frame where the user has started dragging, so
	that they can move the group of keyframes relative to that.

	Other keyframes will be moved based on their
	offset from the pivot keyframe.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Cryo)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local Preview = require(Plugin.Src.Util.Preview)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

return function(pivotFrame, newFrame)
	return function(store)
		local state = store:getState()
		local selectedKeyframes = state.Status.SelectedKeyframes
		local animationData = state.AnimationData
		if not (animationData and selectedKeyframes) then
			return
		end

		local maxLength = animationData.Metadata and animationData.Metadata.FrameRate
			and AnimationData.getMaximumLength(animationData.Metadata.FrameRate)
			or AnimationData.getMaximumLength(30)

		local newData = deepCopy(animationData)

		-- To prevent clobbering keyframes that should be moved,
		-- we have to move the keyframes from last to first if
		-- moving the keyframes forward in the timeline.
		local moveLastToFirst = newFrame > pivotFrame

		local earliestFrame, latestFrame = Preview.getFrameBounds(newData, selectedKeyframes)
		local newSelectedKeyframes = deepCopy(selectedKeyframes)

		for instanceName, instance in pairs(selectedKeyframes) do
			local dataInstance = newData.Instances[instanceName]

			for trackName, _ in pairs(instance) do
				local keyframes = Cryo.Dictionary.keys(instance[trackName])
				table.sort(keyframes)

				local startIndex, endIndex, step
				if moveLastToFirst then
					startIndex = #keyframes
					endIndex = 1
					step = -1
				else
					startIndex = 1
					endIndex = #keyframes
					step = 1
				end

				local track = dataInstance.Tracks[trackName]

				for index = startIndex, endIndex, step do
					local oldFrame = keyframes[index]
					local insertFrame = newFrame + (oldFrame - pivotFrame)
					insertFrame = math.clamp(insertFrame, oldFrame - earliestFrame, maxLength - (latestFrame - oldFrame))
					AnimationData.moveKeyframe(track, oldFrame, insertFrame)
					AnimationData.moveNamedKeyframe(newData, oldFrame, insertFrame)

					newSelectedKeyframes[instanceName][trackName][oldFrame] = nil
					newSelectedKeyframes[instanceName][trackName][insertFrame] = true
				end
			end
		end

		store:dispatch(UpdateAnimationData(newData))
		store:dispatch(SetSelectedKeyframes(newSelectedKeyframes))
	end
end