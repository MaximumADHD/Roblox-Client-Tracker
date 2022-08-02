--[[
	Replace the selection with a generated curve.

	New keys are added at the ends of the selection if needed.
	All other keys are deleted prior to the operation.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local isEmpty = require(Plugin.Src.Util.isEmpty)

local AnimationData = require(Plugin.Src.Util.AnimationData)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local SelectionUtils = require(Plugin.Src.Util.SelectionUtils)
local CurveUtils = require(Plugin.Src.Util.CurveUtils)

local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

return function(easingStyle, easingDirection)
	return function(store)
		local state = store:getState()
		local selectedKeyframes = state.Status.SelectedKeyframes
		local animationData = state.AnimationData

		if not (animationData and selectedKeyframes) then
			return
		end

		local newData = Cryo.Dictionary.join({}, animationData)
		newData.Instances = Cryo.Dictionary.join({}, newData.Instances)
		newData.Events = deepCopy(newData.Events)

		local earliest, latest = AnimationData.getSelectionBounds(animationData, selectedKeyframes)
		local newSelectedKeyframes = deepCopy(selectedKeyframes)

		for instanceName, instance in pairs(GetFFlagChannelAnimations() and newSelectedKeyframes or selectedKeyframes) do
			newData.Instances[instanceName] = Cryo.Dictionary.join({}, newData.Instances[instanceName])
			newData.Instances[instanceName].Tracks = Cryo.Dictionary.join({}, newData.Instances[instanceName].Tracks)

			local dataInstance = newData.Instances[instanceName]

			for trackName, selectionTrack in pairs(instance) do
				dataInstance.Tracks[trackName] = deepCopy(dataInstance.Tracks[trackName])

				local dataTrack = dataInstance.Tracks[trackName]
				SelectionUtils.traverse(selectionTrack, dataTrack, function(selectionTrack, dataTrack)
					if not selectionTrack.Selection or not dataTrack.Keyframes or not dataTrack.Data then
						return
					end

					-- Add keyframes at the ends of the selection if needed. Evaluate their value and tangent.
					if not dataTrack.Data[earliest] then
						local leftSlope = KeyframeUtils.getSlopes(dataTrack, earliest)
						local keyframeData = {
							Value = KeyframeUtils.getValue(dataTrack, earliest),
							LeftSlope = leftSlope,
						}
						AnimationData.addKeyframe(dataTrack, earliest, keyframeData)
					end
					if not dataTrack.Data[latest] then
						local _, rightSlope = KeyframeUtils.getSlopes(dataTrack, latest)
						local keyframeData = {
							Value = KeyframeUtils.getValue(dataTrack, latest),
							RightSlope = rightSlope,
						}
						AnimationData.addKeyframe(dataTrack, latest, keyframeData)
					end

					-- Delete keyframes from dataTrack
					for _, tck in ipairs(dataTrack.Keyframes) do
						if tck > earliest and tck < latest then
							dataTrack.Data[tck] = nil
						end
					end

					-- Generate new keyframes
					local newKeyframes = CurveUtils.generateCurve(dataTrack.Type, easingStyle, easingDirection,
						earliest, dataTrack.Data[earliest], latest, dataTrack.Data[latest])

					if newKeyframes and not isEmpty(newKeyframes) then
						-- Merge the new keys with the ones remaining on the track.
						dataTrack.Keyframes = Cryo.List.join(Cryo.Dictionary.keys(dataTrack.Data), Cryo.Dictionary.keys(newKeyframes))
						table.sort(dataTrack.Keyframes)
						dataTrack.Data = Cryo.Dictionary.join(dataTrack.Data, newKeyframes)
					end
				end)
			end
		end

		store:dispatch(UpdateAnimationData(newData))
		store:dispatch(SetSelectedKeyframes({}))
	end
end
