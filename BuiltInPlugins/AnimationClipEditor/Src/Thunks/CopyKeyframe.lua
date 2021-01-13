--[[
	Copies a single keyframe to the clipboard.
	If multiAdd is true, the keyframe will be added to the clipboard.
	Otherwise, the clipboard will be overwritten.

	Usually, this will only be called from the CopySelectedKeyframes thunk.
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local SetClipboard = require(Plugin.Src.Actions.SetClipboard)

return function(instanceName, trackName, frame, multiAdd)
	return function(store)
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

		if trackData and trackData[frame] then
			local data = track.Data[frame]
			local copiedData = Cryo.Dictionary.join(data)

			if not multiAdd then
				store:dispatch(SetClipboard({
					[instanceName] = {
						[trackName] = {
							[frame] = copiedData,
						},
					},
				}))
			else
				local newInstance = clipboard[instanceName] ~= nil and clipboard[instanceName] or {}
				local newTrack = newInstance[trackName] ~= nil and newInstance[trackName] or {}

				store:dispatch(SetClipboard(Cryo.Dictionary.join(clipboard, {
					[instanceName] = Cryo.Dictionary.join(newInstance, {
						[trackName] = Cryo.Dictionary.join(newTrack, {
							[frame] = copiedData,
						}),
					}),
				})))
			end
		end
	end
end