--[[
	Scales the selected keyframes around a pivot.
	The scale parameter determines the new scale of the keyframes.
	If keyframes are at the pivot, they won't move, but the pivot
	doesn't have to be a keyframe.

	If any snap mode is enabled (Frame or Keyframe), then the keyframes
	will snap to the nearest frame. If not, the keyframes will snap to
	ticks.

	Currently, if keyframes are scaled such that multiple keyframes
	will end up on the same tick, one of the overlapping keyframes
	will be deleted and replaced by the other overlapping keyframe.
	The outer keyframes have precedence over the inner keyframes
	when this situation has to occur.

	If realtime changes are enabled and changes are made, this thunk
	also relies on "reference data" coming from the dragContext.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local Constants = require(Plugin.Src.Util.Constants)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)
local SelectionUtils = require(Plugin.Src.Util.SelectionUtils)

local GetFFlagFixScaleKeyframeClobbering = require(Plugin.LuaFlags.GetFFlagFixScaleKeyframeClobbering)
local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

-- Helper function which allows us to snap keyframes
-- to exact frames, preventing keyframes between frames.
-- TODO: Use KeyframeUtils.getNearestTick() instead
local function roundToInt(num)
	return math.floor(num + 0.5)
end

return function(pivotTick, scale, dragContext)
	return function(store)
		local state = store:getState()
		local scroll = state.Status.Scroll
		local zoom = state.Status.Zoom
		local displayFrameRate = state.Status.DisplayFrameRate
		local snapMode = GetFFlagUseTicks() and state.Status.SnapMode or nil
		local editingLength = state.Status.EditingLength
		local selectedKeyframes = dragContext and dragContext.selectedKeyframes or state.Status.SelectedKeyframes
		local animationData = dragContext and dragContext.animationData or state.AnimationData
		if not (animationData and selectedKeyframes) then
			return
		end

		local newData = Cryo.Dictionary.join({}, animationData)
		newData.Instances = Cryo.Dictionary.join({}, newData.Instances)
		newData.Events = deepCopy(newData.Events)

		local startTick = 0
		if not GetFFlagFixScaleKeyframeClobbering() then
			local range = TrackUtils.getZoomRange(animationData, scroll, zoom, editingLength)
			startTick = range.Start
		end

		local maxLength
		if GetFFlagUseTicks() then
			maxLength = Constants.MAX_ANIMATION_LENGTH
		else
			maxLength = AnimationData.Metadata and animationData.Metadata.FrameRate
				and AnimationData.getMaximumLength(animationData.Metadata.FrameRate)
				or AnimationData.getMaximumLength(30)
		end

		local newSelectedKeyframes = deepCopy(selectedKeyframes)

		if GetFFlagChannelAnimations() then
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

						if scale > 1 then
							local function scaleKeyframe(oldTick, step)
								local insertTick = roundToInt(pivotTick + ((oldTick - pivotTick) * scale))
								if GetFFlagUseTicks() and snapMode ~= Constants.SNAP_MODES.None then
									insertTick = KeyframeUtils.getNearestFrame(insertTick, displayFrameRate)
								end
								insertTick = math.clamp(insertTick, startTick, maxLength)

								-- Step is 1 when going from left to right, and -1 when going from right to left.
								-- Use that to stop the loop (by returning true) when we reach the pivot
								if insertTick * step >= pivotTick * step then
									return true
								end

								if dataTrack.Keyframes then
									AnimationData.moveKeyframe(dataTrack, oldTick, insertTick)
									AnimationData.moveNamedKeyframe(newData, oldTick, insertTick)
								end

								selectionTrack.Selection[oldTick] = nil
								selectionTrack.Selection[insertTick] = true

								return false
							end

							-- Everything below the pivot is moving left, so perform
							-- the move from left to right to avoid clobbering
							for index = 1, #keyframes, 1 do
								if scaleKeyframe(keyframes[index], 1) then
									break
								end
							end

							-- Everything above the pivot is moving right, so perform
							-- the move from right to left to avoid clobbering
							for index = #keyframes, 1, -1 do
								if scaleKeyframe(keyframes[index], -1) then
									break
								end
							end
						else
							local lowPivot, highPivot = KeyframeUtils.findNearestKeyframes(keyframes, pivotTick)
							if highPivot == nil then
								highPivot = lowPivot + 1
							end

							local function scaleKeyframe(oldTick)
								local insertTick = roundToInt(pivotTick + ((oldTick - pivotTick) * scale))
								if GetFFlagUseTicks() and snapMode ~= Constants.SNAP_MODES.None then
									insertTick = KeyframeUtils.getNearestFrame(insertTick, displayFrameRate)
								end
								insertTick = math.clamp(insertTick, startTick, maxLength)

								if dataTrack.Keyframes then
									AnimationData.moveKeyframe(dataTrack, oldTick, insertTick)
									AnimationData.moveNamedKeyframe(newData, oldTick, insertTick)
								end

								selectionTrack.Selection[oldTick] = nil
								selectionTrack.Selection[insertTick] = true
							end

							for index = lowPivot, 1, -1 do
								scaleKeyframe(keyframes[index])
							end

							for index = highPivot, #keyframes, 1 do
								scaleKeyframe(keyframes[index])
							end
						end
					end)
				end
			end

		else
			for instanceName, instance in pairs(selectedKeyframes) do
				newData.Instances[instanceName] = Cryo.Dictionary.join({}, newData.Instances[instanceName])
				newData.Instances[instanceName].Tracks = Cryo.Dictionary.join({}, newData.Instances[instanceName].Tracks)

				local dataInstance = newData.Instances[instanceName]

				if scale > 1 then
					for trackName, _ in pairs(instance) do
						dataInstance.Tracks[trackName] = deepCopy(dataInstance.Tracks[trackName])

						local keyframes = Cryo.Dictionary.keys(instance[trackName])
						table.sort(keyframes)
						local track = dataInstance.Tracks[trackName]

						-- Everything below the pivot is moving left, so perform
						-- the move from left to right to avoid clobbering
						for index = 1, #keyframes, 1 do
							local oldTick = keyframes[index]
							local insertTick = roundToInt(pivotTick + ((oldTick - pivotTick) * scale))
							if GetFFlagUseTicks() and snapMode ~= Constants.SNAP_MODES.None then
								insertTick = KeyframeUtils.getNearestFrame(insertTick, displayFrameRate)
							end
							insertTick = math.clamp(insertTick, startTick, maxLength)
							if insertTick >= pivotTick then
								break
							end
							AnimationData.moveKeyframe(track, oldTick, insertTick)
							AnimationData.moveNamedKeyframe(newData, oldTick, insertTick)

							newSelectedKeyframes[instanceName][trackName][oldTick] = nil
							newSelectedKeyframes[instanceName][trackName][insertTick] = true
						end

						-- Everything above the pivot is moving right, so perform
						-- the move from right to left to avoid clobbering
						for index = #keyframes, 1, -1 do
							local oldTick = keyframes[index]
							local insertTick = roundToInt(pivotTick + ((oldTick - pivotTick) * scale))
							if GetFFlagUseTicks() and snapMode ~= Constants.SNAP_MODES.None then
								insertTick = KeyframeUtils.getNearestFrame(insertTick, displayFrameRate)
							end
							insertTick = math.clamp(insertTick, startTick, maxLength)
							if insertTick <= pivotTick then
								break
							end
							AnimationData.moveKeyframe(track, oldTick, insertTick)
							AnimationData.moveNamedKeyframe(newData, oldTick, insertTick)

							newSelectedKeyframes[instanceName][trackName][oldTick] = nil
							newSelectedKeyframes[instanceName][trackName][insertTick] = true
						end
					end
				else
					for trackName, _ in pairs(instance) do
						dataInstance.Tracks[trackName] = deepCopy(dataInstance.Tracks[trackName])

						local keyframes = Cryo.Dictionary.keys(instance[trackName])
						table.sort(keyframes)
						local track = dataInstance.Tracks[trackName]

						local lowPivot, highPivot = KeyframeUtils.findNearestKeyframes(keyframes, pivotTick)
						if highPivot == nil then
							highPivot = lowPivot + 1
						end

						-- Everything below the pivot is moving right, so perform
						-- the move from right to left to avoid clobbering
						for index = lowPivot, 1, -1 do
							local oldTick = keyframes[index]
							local insertTick = roundToInt(pivotTick + ((oldTick - pivotTick) * scale))
							if GetFFlagUseTicks() and snapMode ~= Constants.SNAP_MODES.None then
								insertTick = KeyframeUtils.getNearestFrame(insertTick, displayFrameRate)
							end
							insertTick = math.clamp(insertTick, startTick, insertTick)
							AnimationData.moveKeyframe(track, oldTick, insertTick)
							AnimationData.moveNamedKeyframe(newData, oldTick, insertTick)

							newSelectedKeyframes[instanceName][trackName][oldTick] = nil
							newSelectedKeyframes[instanceName][trackName][insertTick] = true
						end

						-- Everything above the pivot is moving left, so perform
						-- the move from left to right to avoid clobbering
						for index = highPivot, #keyframes, 1 do
							local oldTick = keyframes[index]
							local insertTick = roundToInt(pivotTick + ((oldTick - pivotTick) * scale))
							if GetFFlagUseTicks() and snapMode ~= Constants.SNAP_MODES.None then
								insertTick = KeyframeUtils.getNearestFrame(insertTick, displayFrameRate)
							end
							insertTick = math.clamp(insertTick, startTick, maxLength)
							AnimationData.moveKeyframe(track, oldTick, insertTick)
							AnimationData.moveNamedKeyframe(newData, oldTick, insertTick)

							newSelectedKeyframes[instanceName][trackName][oldTick] = nil
							newSelectedKeyframes[instanceName][trackName][insertTick] = true
						end
					end
				end
			end
		end
		store:dispatch(UpdateAnimationData(newData))
		store:dispatch(SetSelectedKeyframes(newSelectedKeyframes))
	end
end
