local Framework = script:FindFirstAncestor("UI").Parent

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local MediaPlayerControls = require(UIFolderData.MediaPlayerControls.style)

local Box = require(Framework.UI.Components.Box)

local deepCopy = require(Framework.Util.deepCopy)

return {
	PlayVideoIcon = {
		Size = UDim2.fromOffset(30, 30),
		ScaleType = Enum.ScaleType.Fit,
		Image = deepCopy(MediaPlayerControls).Controls.PlayButton.ForegroundStyle.Image,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
	},
	PausedOverlay = {
		Background = Box,
		BackgroundStyle = {
			Color = Color3.fromRGB(0, 0, 0),
			Transparency = 0.5,
		},
	},
	MediaPlayerControls = deepCopy(MediaPlayerControls),
}
