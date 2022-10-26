--[[
	Assets for TrustAndSafety module.
]]
local CorePackages = game:GetService("CorePackages")

local UIBlox = require(CorePackages.UIBlox)
local UIBloxImages = UIBlox.App.ImageSet.Images
local getIconSize = UIBlox.App.ImageSet.getIconSize
local IconSize = UIBlox.App.ImageSet.Enum.IconSize

return {
	Images = {
		MuteIcon = {
			Size = UDim2.fromOffset(getIconSize(IconSize.Medium), getIconSize(IconSize.Medium)),
			Image = "rbxasset://textures/ui/VoiceChat/SpeakerLight/Unmuted0.png",
		},
		BlockIcon = {
			Size = UDim2.fromOffset(getIconSize(IconSize.Medium), getIconSize(IconSize.Medium)),
			Image = UIBloxImages["icons/actions/block"],
		},
		VoiceChatIcon = {
			Size = UDim2.fromOffset(getIconSize(IconSize.Medium), getIconSize(IconSize.Medium)),
			Image = "rbxasset://textures/ui/VoiceChat/SpeakerLight/Unmuted0.png",
		},
		TextChatIcon = {
			Size = UDim2.fromOffset(getIconSize(IconSize.Medium), getIconSize(IconSize.Medium)),
			Image = "rbxasset://textures/ui/TopBar/chatOff.png",
		},
		OtherIcon = {
			Size = UDim2.fromOffset(getIconSize(IconSize.Medium), getIconSize(IconSize.Medium)),
			Image = UIBloxImages["icons/menu/help"],
		},
		RoundedRect = {
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(8, 8, 9, 9),
			Image = UIBloxImages["component_assets/circle_17"],
		},
	},
}
