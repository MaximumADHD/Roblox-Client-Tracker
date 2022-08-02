--[[
	Copies a single keyframe to the clipboard.
	If multiAdd is true, the keyframe will be added to the clipboard.
	Otherwise, the clipboard will be overwritten.

	Usually, this will only be called from the CopySelectedKeyframes thunk.
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local SetClipboard = require(Plugin.Src.Actions.SetClipboard)

local GetFFlagFacialAnimationSupport = require(Plugin.LuaFlags.GetFFlagFacialAnimationSupport)
local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

-- TODO: Can be deleted when GetFFlagChannelAnimations() is ON
return function(instanceName, trackName, tck, multiAdd)
	return function(store)
		if GetFFlagChannelAnimations() then
			return
		end

		local state = store:getState()
		local clipboard = state.Status.Clipboard
		local animationData = state.AnimationData
		if not animationData then
			return
		end

		if not clipboard then
			clipboard = {}
		end

		local instance = animationData.Instances[instanceName]
		if instance == nil then
			return
		end

		local tracks = instance.Tracks
		if tracks == nil then
			return
		end

		local track = tracks[trackName]
		if track == nil then
			return
		end

		local trackData = track.Data

		if trackData and trackData[tck] then
			local data = track.Data[tck]
			local copiedData = Cryo.Dictionary.join(data)
			local trackType = track.Type

			if not multiAdd then
				store:dispatch(SetClipboard({
					[instanceName] = {
						[trackName] = GetFFlagFacialAnimationSupport() and {
							Type = trackType,
							Data = {
								[tck] = copiedData,
							},
						} or {
							[tck] = copiedData,
						},
					},
				}))
			else
				local newInstance = clipboard[instanceName] ~= nil and clipboard[instanceName] or {}
				local newTrack = newInstance[trackName] ~= nil and newInstance[trackName] or {
					Type = GetFFlagFacialAnimationSupport() and trackType or nil
				}
				local newData
				if GetFFlagFacialAnimationSupport() then
					newData = newTrack.Data ~= nil and newTrack.Data or {}
				end

				store:dispatch(SetClipboard(Cryo.Dictionary.join(clipboard, {
					[instanceName] = Cryo.Dictionary.join(newInstance, {
						[trackName] = GetFFlagFacialAnimationSupport() and
							Cryo.Dictionary.join(newTrack, {
								Data = Cryo.Dictionary.join(newData, {
									[tck] = copiedData,
								}),
							}) or Cryo.Dictionary.join(newTrack, {
								[tck] = copiedData,
							}),
					}),
				})))
			end
		end
	end
end
