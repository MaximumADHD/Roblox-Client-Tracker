--[[
	Moves all keyframes in the selection to newFrame.

	pivotFrame is the frame where the user has started dragging, so
	that they can move the group of keyframes relative to that.

	Other keyframes will be moved based on their
	offset from the pivot keyframe.

	If realtime changes are enabled and changes are made, this thunk
	also relies on "reference data" coming from the dragContext.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local Preview = require(Plugin.Src.Util.Preview)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)
local Constants = require(Plugin.Src.Util.Constants)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)

local GetFFlagRealtimeChanges = require(Plugin.LuaFlags.GetFFlagRealtimeChanges)
local GetFFlagReduceDeepcopyCalls = require(Plugin.LuaFlags.GetFFlagReduceDeepcopyCalls)
local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)

return function(pivotFrame, newFrame, dragContext)
	return function(store)
		local state = store:getState()
		local selectedKeyframes = (GetFFlagRealtimeChanges() and dragContext) and dragContext.selectedKeyframes or state.Status.SelectedKeyframes
		local animationData = (GetFFlagRealtimeChanges() and dragContext) and dragContext.animationData or state.AnimationData
		local displayFrameRate = state.Status.DisplayFrameRate
		local snapMode = GetFFlagUseTicks() and state.Status.SnapMode or nil

		if not (animationData and selectedKeyframes) then
			return
		end

		local maxLength
		if GetFFlagUseTicks() then
			maxLength = Constants.MAX_ANIMATION_LENGTH
		else
			maxLength = AnimationData.Metadata and animationData.Metadata.FrameRate
				and AnimationData.getMaximumLength(animationData.Metadata.FrameRate)
				or AnimationData.getMaximumLength(30)
		end
		local newData = GetFFlagReduceDeepcopyCalls() and Cryo.Dictionary.join({}, animationData) or deepCopy(animationData)

		if GetFFlagReduceDeepcopyCalls() then
			newData.Instances = Cryo.Dictionary.join({}, newData.Instances)
			newData.Events = deepCopy(newData.Events)
		end

		-- To prevent clobbering keyframes that should be moved,
		-- we have to move the keyframes from last to first if
		-- moving the keyframes forward in the timeline.
		local moveLastToFirst = newFrame > pivotFrame

		local earliestFrame, latestFrame
		if GetFFlagRealtimeChanges() then
			earliestFrame, latestFrame = AnimationData.getSelectionBounds(newData, selectedKeyframes)
		else
			earliestFrame, latestFrame = Preview.getFrameBounds(newData, selectedKeyframes)
		end

		local newSelectedKeyframes = deepCopy(selectedKeyframes)

		for instanceName, instance in pairs(selectedKeyframes) do
			if GetFFlagReduceDeepcopyCalls() then
				newData.Instances[instanceName] = Cryo.Dictionary.join({}, newData.Instances[instanceName])
				newData.Instances[instanceName].Tracks = Cryo.Dictionary.join({}, newData.Instances[instanceName].Tracks)
			end

			local dataInstance = newData.Instances[instanceName]

			for trackName, _ in pairs(instance) do
				if GetFFlagReduceDeepcopyCalls() then
					dataInstance.Tracks[trackName] = deepCopy(dataInstance.Tracks[trackName])
				end

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
					if GetFFlagUseTicks() and snapMode ~= Constants.SNAP_MODES.Disabled then
						insertFrame = KeyframeUtils.getNearestFrame(insertFrame, displayFrameRate)
					end
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
