--[[
	Moves all keyframes in the selection to newTick.

	pivotTick is the tick where the user has started dragging, so
	that they can move the group of keyframes relative to that.

	Other keyframes will be moved based on their
	offset from the pivot keyframe.

	If realtime changes are enabled and changes are made, this thunk
	also relies on "reference data" coming from the dragContext.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)
local Constants = require(Plugin.Src.Util.Constants)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local SelectionUtils = require(Plugin.Src.Util.SelectionUtils)

local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)

local wrappee = function(pivotTick, newTick, pivotValue, newValue, dragContext)
	return function(store)
		local state = store:getState()
		local selectedKeyframes = dragContext and dragContext.selectedKeyframes or state.Status.SelectedKeyframes
		local animationData = dragContext and dragContext.animationData or state.AnimationData
		local frameRate = state.Status.FrameRate
		local snapMode = state.Status.SnapMode

		if not (animationData and selectedKeyframes) then
			return
		end

		local newData = Cryo.Dictionary.join({}, animationData)
		newData.Instances = Cryo.Dictionary.join({}, newData.Instances)
		newData.Events = deepCopy(newData.Events)

		-- To prevent clobbering keyframes that should be moved,
		-- we have to move the keyframes from last to first if
		-- moving the keyframes forward in the timeline.
		local moveLastToFirst = newTick > pivotTick
		local earliestTick, latestTick = AnimationData.getSelectionBounds(newData, selectedKeyframes)
		local newSelectedKeyframes = deepCopy(selectedKeyframes)

		for instanceName, instance in pairs(newSelectedKeyframes) do
			newData.Instances[instanceName] = Cryo.Dictionary.join({}, newData.Instances[instanceName])
			newData.Instances[instanceName].Tracks = Cryo.Dictionary.join({}, newData.Instances[instanceName].Tracks)

			local dataInstance = newData.Instances[instanceName]

			-- Iterate through all selected tracks. For each track, traverse its selected components and
			-- adjust the keyframes both in the selection and in the animationData (if relevant; composite
			-- tracks don't have keyframes)
			for trackName, selectionTrack in pairs(instance) do
				dataInstance.Tracks[trackName] = deepCopy(dataInstance.Tracks[trackName])

				local dataTrack = dataInstance.Tracks[trackName]
				SelectionUtils.traverse(selectionTrack, dataTrack, function(selectionTrack, dataTrack)
					if not selectionTrack.Selection then
						return
					end

					local keyframes = Cryo.Dictionary.keys(selectionTrack.Selection)
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

					for index = startIndex, endIndex, step do
						local oldTick = keyframes[index]
						local insertTick = newTick + (oldTick - pivotTick)
						if snapMode ~= Constants.SNAP_MODES.None then
							insertTick = KeyframeUtils.getNearestFrame(insertTick, frameRate)
						end
						insertTick = math.clamp(insertTick, oldTick - earliestTick, Constants.MAX_ANIMATION_LENGTH - (latestTick - oldTick))
						if dataTrack.Keyframes then
							AnimationData.moveKeyframe(dataTrack, oldTick, insertTick)
							AnimationData.moveNamedKeyframe(newData, oldTick, insertTick)
							if GetFFlagCurveEditor() and dataTrack.Type ~= Constants.TRACK_TYPES.Quaternion then
								if dataTrack.Data and dataTrack.Data[insertTick] and pivotValue and newValue then
									if dataTrack.Type == Constants.TRACK_TYPES.Facs then
										newValue = math.clamp(newValue, 0, 1)
									end
									AnimationData.setKeyframeData(dataTrack, insertTick, { Value = dataTrack.Data[insertTick].Value - pivotValue + newValue })
								end
							end
						end

						selectionTrack.Selection[oldTick] = nil
						selectionTrack.Selection[insertTick] = true
					end
				end)
			end
		end

		store:dispatch(UpdateAnimationData(newData))
		store:dispatch(SetSelectedKeyframes(newSelectedKeyframes))
	end
end

if GetFFlagCurveEditor() then
	return wrappee
else
	return function(pivotTick, newTick, dragContext)
		return wrappee(pivotTick, newTick, nil, nil, dragContext)
	end
end
