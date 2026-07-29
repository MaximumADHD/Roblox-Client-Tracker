local Framework = script:FindFirstAncestor("UI").Parent

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local MediaPlayerControls = require(UIFolderData.MediaPlayerControls.style)

local Util = require(Framework.Util)
local deepCopy = Util.deepCopy

return {
	PlaceholderImage = {
		ScaleType = Enum.ScaleType.Fit,
		Image = "rbxasset://textures/DeveloperFramework/AudioPlayer/audioPlay_BG.png",
		Color = Color3.fromRGB(204, 204, 204),
	},
	MediaPlayerControls = deepCopy(MediaPlayerControls),
}
