--!strict
--[[
	Pastes all keyframes from the clipboard, starting at the given frame.
	Other keyframes will be pasted after the frame based on their
	original offset from the first keyframe.

	If a keyframe is pasted over another keyframe, the pasted keyframe will
	clobber all of the existing keyframe's data and easing information.
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)
local AddTrack = require(Plugin.Src.Thunks.AddTrack)
local Types = require(Plugin.Src.Types)
local SetNotification = require(Plugin.Src.Actions.SetNotification)

return function(tck: number, analytics: any): (any) -> ()
	return function(store: Types.Store)
		local state = store:getState()
		local clipboard = state.Status.Clipboard
		local animationData = state.AnimationData
		local editorMode = state.EditorMode
		if not animationData or not clipboard then
			return
		end

		local newData = deepCopy(animationData)
		local isChannelAnimation = AnimationData.isChannelAnimation(newData)

		local lowestFrame
		for _, instance in pairs(clipboard) do
			for _, track in pairs(instance) do
				for keyframe, _ in pairs(track.Data) do
					lowestFrame = lowestFrame and math.min(lowestFrame, keyframe) or keyframe
				end
			end
		end

		for instanceName, instance in pairs(clipboard) do
			local dataInstance = newData.Instances[instanceName]
			for _, track in ipairs(instance) do
				local path = Cryo.List.join({track.TopTrackName}, track.RelPath)

				-- Try to find the top track. If it's not there, we need to create it,
				-- as well as all the required components
				local topTrack = AnimationData.getTrack(newData, instanceName, {track.TopTrackName})
				if topTrack == nil then
					AnimationData.addTrack(dataInstance.Tracks, track.TopTrackName, track.TopTrackType,
						isChannelAnimation, track.RotationType, track.EulerAnglesOrder)
					store:dispatch(AddTrack(instanceName, track.TopTrackName, track.TopTrackType,
						track.RotationType, track.EulerAnglesOrder, analytics))
				end
				local dataTrack = AnimationData.getTrack(newData, instanceName, path)
				-- dataTrack is missing if we try to paste an Euler Angle track
				-- into a quaternion track.
				if dataTrack and dataTrack.Type == track.Type then
					for keyframe, data in pairs(track.Data) do
						local insertFrame = tck + (keyframe - lowestFrame)
						AnimationData.addKeyframe(dataTrack, insertFrame, data)
						analytics:report("onAddKeyframe", track.TopTrackName, editorMode)
					end
				else
					store:dispatch(SetNotification("CannotPasteError", true))
				end
			end
		end

		store:dispatch(UpdateAnimationData(newData))
	end
end
