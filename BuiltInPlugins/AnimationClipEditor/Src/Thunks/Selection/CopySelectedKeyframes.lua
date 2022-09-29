--[[
	Copies all keyframes from the current selection to the clipboard.

	The data structure of the clipboard is as follows
	clipboard = {
		[instanceName] = {
			{
				TopTrackName = "Head",
				TopTrackType = Constants.TRACK_TYPES.CFrame | Constants.TRACK_TYPES.Facs,
				RotationType = Constants.TRACK_TYPES.Quaternion | Constants.TRACK_TYPES.EulerAngles,
				EulerAnglesOrder = Constants.EULER_ANGLES_ORDER.{XYZ}
				RelPath = {"Position", "X"},
				Data = {
					[tick] = {
						deepCopy(Templates.keyframe)
					},
					:
				}
			},
			:
		},
		:
	}

	The TopTrackName and TopTrackType refer to the top level track of the copied component. This is used
	if the target animation (when pasting) does not have the necessary tracks.
]]

local StudioService = game:GetService("StudioService")

local Plugin = script.Parent.Parent.Parent.Parent
local deepCopy = require(Plugin.Src.Util.deepCopy)
local isEmpty = require(Plugin.Src.Util.isEmpty)
local SetClipboard = require(Plugin.Src.Actions.SetClipboard)
local Constants = require(Plugin.Src.Util.Constants)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local SelectionUtils = require(Plugin.Src.Util.SelectionUtils)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)

return function()
	return function(store)
		local state = store:getState()
		local selectedKeyframes = state.Status.SelectedKeyframes
		local animationData = state.AnimationData
		if not (animationData and selectedKeyframes) then
			return
		end

		local clipboard = {}

		for instanceName, instance in pairs(selectedKeyframes) do
			local dataInstance = animationData.Instances[instanceName]

			local instanceClipboard = {}

			for topTrackName, topSelectionTrack in pairs(instance) do
				local topTrack = dataInstance.Tracks[topTrackName]

				SelectionUtils.traverse(topSelectionTrack, topTrack, function(selectionTrack, dataTrack, relPath)
					-- If the dataTrack does not have Data, then the selected track is not a leaf.
					if not selectionTrack.Selection or not dataTrack.Data then
						return
					end

					local trackClipboard = {
						TopTrackName = topTrackName,
						TopTrackType = topTrack.Type,
						RelPath = relPath,
						Type = dataTrack.Type,
						RotationType = TrackUtils.getRotationType(topTrack),
						EulerAnglesOrder = TrackUtils.getEulerAnglesOrder(topTrack),
						Data = {}
					}

					for tck, _ in pairs(selectionTrack.Selection) do
						local keyframe = dataTrack.Data[tck]
						if keyframe then
							trackClipboard.Data[tck] = deepCopy(keyframe)
						end
					end

					table.insert(instanceClipboard, trackClipboard)
				end)
			end
			clipboard[instanceName] = instanceClipboard
		end

		-- Clear the Studio clipboard if the Animation Editor has copied keyframes.
		-- This prevents weird overlap between multiple copy and paste logics.
		if not isEmpty(clipboard) then
			StudioService:CopyToClipboard("")
		end

		local clipboardType = AnimationData.isChannelAnimation(animationData) and Constants.CLIPBOARD_TYPE.Channels or Constants.CLIPBOARD_TYPE.Keyframes
		store:dispatch(SetClipboard(clipboard, clipboardType))
	end
end
