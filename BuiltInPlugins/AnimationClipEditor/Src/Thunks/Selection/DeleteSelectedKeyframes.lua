--[[
	Deletes all keyframes that are currently selected.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Cryo = require(Plugin.Cryo)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

return function()
	return function(store)
		local state = store:getState()
		local selectedKeyframes = state.Status.SelectedKeyframes
		local animationData = state.AnimationData
		if not (animationData and selectedKeyframes) then
			return
		end

		local newData = deepCopy(animationData)

		for instanceName, instance in pairs(selectedKeyframes) do
			local dataInstance = newData.Instances[instanceName]

			for trackName, _ in pairs(instance) do
				local keyframes = Cryo.Dictionary.keys(instance[trackName])
				table.sort(keyframes)
				local track = dataInstance.Tracks[trackName]

				for _, keyframe in ipairs(keyframes) do
					if track.Data[keyframe] then
						AnimationData.deleteKeyframe(track, keyframe)

						state.Analytics:onDeleteKeyframe(trackName, keyframe)
					end
				end

				if isEmpty(track.Data) then
					dataInstance.Tracks[trackName] = nil
				end
			end
		end

		store:dispatch(UpdateAnimationData(newData))
		store:dispatch(SetSelectedKeyframes({}))
	end
end