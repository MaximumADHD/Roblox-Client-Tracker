--[[
	Deletes all keyframes that are currently selected.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Packages.Cryo)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)
local SelectionUtils = require(Plugin.Src.Util.SelectionUtils)

local GetFFlagCurveAnalytics = require(Plugin.LuaFlags.GetFFlagCurveAnalytics)

return function(analytics)
	return function(store)
		local state = store:getState()
		local selectedKeyframes = state.Status.SelectedKeyframes
		local animationData = state.AnimationData
		local editorMode = state.Status.EditorMode
		if not (animationData and selectedKeyframes) then
			return
		end

		local newData = Cryo.Dictionary.join({}, animationData)
		newData.Instances = Cryo.Dictionary.join({}, newData.Instances)

		for instanceName, instance in pairs(selectedKeyframes) do
			newData.Instances[instanceName] = Cryo.Dictionary.join({}, newData.Instances[instanceName])
			newData.Instances[instanceName].Tracks = Cryo.Dictionary.join({}, newData.Instances[instanceName].Tracks)

			local dataInstance = newData.Instances[instanceName]

			for trackName, selectionTrack in pairs(instance) do
				dataInstance.Tracks[trackName] = deepCopy(dataInstance.Tracks[trackName])

				local dataTrack = dataInstance.Tracks[trackName]
				local trackHasBeenTraversed = false
				local trackHasKeyframes = false

				SelectionUtils.traverse(selectionTrack, dataTrack, function(selectionTrack, dataTrack)
					if not selectionTrack.Selection then
						return
					end
					trackHasBeenTraversed = true
					for keyframe, _ in pairs(selectionTrack.Selection) do
						if dataTrack.Data and dataTrack.Data[keyframe] then
							AnimationData.deleteKeyframe(dataTrack, keyframe)

							if GetFFlagCurveAnalytics() then
								analytics:report("onDeleteKeyframe", trackName, editorMode)
							end
						end
					end
					if dataTrack.Data and not isEmpty(dataTrack.Data) then
						trackHasKeyframes = true
					end
				end)

				-- Check if we have actually traversed something, and the resulting track
				-- did not have any data. If so, remove the track completely.
				if trackHasBeenTraversed and not trackHasKeyframes then
					dataInstance.Tracks[trackName] = nil
				end
			end
		end

		store:dispatch(UpdateAnimationData(newData))
		store:dispatch(SetSelectedKeyframes({}))
	end
end
