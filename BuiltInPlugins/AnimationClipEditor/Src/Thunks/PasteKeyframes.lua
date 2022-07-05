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

local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)
local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)
local GetFFlagCurveAnalytics = require(Plugin.LuaFlags.GetFFlagCurveAnalytics)

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
				for keyframe, _ in pairs((GetFFlagFacialAnimationSupport() or GetFFlagChannelAnimations()) and track.Data or track) do
					lowestFrame = lowestFrame and math.min(lowestFrame, keyframe) or keyframe
				end
			end
		end

		for instanceName, instance in pairs(clipboard) do
			local dataInstance = newData.Instances[instanceName]
			if GetFFlagChannelAnimations() then
				for _, track in ipairs(instance) do
					local path = Cryo.List.join({track.TopTrackName}, track.RelPath)
					if not GetFFlagCurveEditor() then
						local dataTrack = AnimationData.getTrack(newData, instanceName, path)

						-- Create the track if necessary
						if dataTrack == nil then
							-- TODO: Use Clipboard quaternion info (Part of AVBURST-6647)
							AnimationData.addTrack(dataInstance.Tracks, track.TopTrackName, track.TopTrackType, isChannelAnimation)
							store:dispatch(AddTrack(instanceName, track.TopTrackName, track.TopTrackType, analytics))
							dataTrack = AnimationData.getTrack(newData, instanceName, path)
						end
					else
						local dataTrack
						-- Try to find the top track. If it's not there, we need to create it,
						-- as well as all the required components
						local topTrack = AnimationData.getTrack(newData, instanceName, {track.TopTrackName})
						if topTrack == nil then
							AnimationData.addTrack(dataInstance.Tracks, track.TopTrackName, track.TopTrackType,
								isChannelAnimation, track.RotationType, track.EulerAnglesOrder)
							store:dispatch(AddTrack(instanceName, track.TopTrackName, track.TopTrackType,
								track.RotationType, track.EulerAnglesOrder, analytics))
						end
						dataTrack = AnimationData.getTrack(newData, instanceName, path)
						-- dataTrack is missing if we try to paste an Euler Angle track
						-- into a quaternion track.
						if dataTrack and dataTrack.Type == track.Type then
							for keyframe, data in pairs(track.Data) do
								local insertFrame = tck + (keyframe - lowestFrame)
								AnimationData.addKeyframe(dataTrack, insertFrame, data)
								if GetFFlagCurveAnalytics() then
									analytics:report("onAddKeyframe", track.TopTrackName, editorMode)
								end
							end
						else
							store:dispatch(SetNotification("CannotPasteError", true))
						end
					end
				end
			else
				for trackName, track in pairs(instance) do
					local dataTrack = dataInstance.Tracks[trackName]
					if dataTrack == nil then
						local trackType = track.Type
						if GetFFlagFacialAnimationSupport() then
							AnimationData.addTrack(dataInstance.Tracks, trackName, trackType)
						else
							AnimationData.addTrack(dataInstance.Tracks, trackName)
						end
						dataTrack = dataInstance.Tracks[trackName]

						if GetFFlagFacialAnimationSupport() then
							store:dispatch(AddTrack(instanceName, trackName, trackType, analytics))
						else
							store:dispatch(AddTrack(instanceName, trackName, analytics))
						end
					end

					for keyframe, data in pairs(GetFFlagFacialAnimationSupport() and track.Data or track) do
						local insertFrame = tck + (keyframe - lowestFrame)
						-- AddKeyframe will only add a keyframe if it needs to
						AnimationData.addKeyframe_deprecated(dataTrack, insertFrame, data.Value)
						AnimationData.setKeyframeData(dataTrack, insertFrame, data)

						analytics:report("onAddKeyframe", trackName, editorMode)
					end
				end
			end
		end

		store:dispatch(UpdateAnimationData(newData))
	end
end
