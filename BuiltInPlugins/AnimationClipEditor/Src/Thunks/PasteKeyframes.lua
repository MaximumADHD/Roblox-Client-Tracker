--[[
	Pastes all keyframes from the clipboard, starting at the given frame.
	Other keyframes will be pasted after the frame based on their
	original offset from the first keyframe.

	If a keyframe is pasted over another keyframe, the pasted keyframe will
	clobber all of the existing keyframe's data and easing information.
]]

local Plugin = script.Parent.Parent.Parent

local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)
local AddTrack = require(Plugin.Src.Thunks.AddTrack)

local allowPasteKeysBetweenAnimations = require(Plugin.LuaFlags.GetFFlagAllowPasteKeysBetweenAnimations)

return function(frame, analytics)
	return function(store)
		local state = store:getState()
		local clipboard = state.Status.Clipboard
		local animationData = state.AnimationData
		if not animationData or not clipboard then
			return
		end

		local newData = deepCopy(animationData)

		local lowestFrame
		for _, instance in pairs(clipboard) do
			for _, track in pairs(instance) do
				for keyframe, _ in pairs(track) do
					lowestFrame = lowestFrame and math.min(lowestFrame, keyframe) or keyframe
				end
			end
		end

		for instanceName, instance in pairs(clipboard) do
			local dataInstance = newData.Instances[instanceName]
			for trackName, track in pairs(instance) do
				local dataTrack = dataInstance.Tracks[trackName]
				if dataTrack == nil then
					AnimationData.addTrack(dataInstance.Tracks, trackName)
					dataTrack = dataInstance.Tracks[trackName]

					if allowPasteKeysBetweenAnimations() then
						store:dispatch(AddTrack(instanceName, trackName, analytics))
					end
				end

				for keyframe, data in pairs(track) do
					local insertFrame = frame + (keyframe - lowestFrame)
					-- AddKeyframe will only add a keyframe if it needs to
					AnimationData.addKeyframe(dataTrack, insertFrame, data.Value)
					AnimationData.setKeyframeData(dataTrack, insertFrame, data)

					analytics:report("onAddKeyframe", trackName, insertFrame)
				end
			end
		end
		store:dispatch(UpdateAnimationData(newData))
	end
end