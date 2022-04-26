local Plugin = script.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local UI = Framework.UI
local Decoration = UI.Decoration

local Util = Framework.Util
local Cryo = Util.Cryo
local StyleModifier = Util.StyleModifier
local deepCopy = Util.deepCopy

local StyleKey = Framework.Style.StyleKey

local UIFolderData = UI.UIFolderData
local RoundBox = UIFolderData.RoundBox.style

local roundBox = deepCopy(RoundBox)
local function buttonStyle(image)
	return {
		Size = UDim2.fromOffset(28, 28),

		Foreground = Decoration.Image,
		ForegroundStyle = {
			Image = image,
		},

		Background = Decoration.RoundBox,
		BackgroundStyle = Cryo.Dictionary.join(roundBox, {
			Color = StyleKey.ImageButtonBackground,
		}),

		[StyleModifier.Hover] = {
			BackgroundStyle = Cryo.Dictionary.join(roundBox, {
				Transparency = 0.5,
				Color = StyleKey.ImageButtonHover,
			}),
		},

		[StyleModifier.Disabled] = {
			BackgroundStyle = Cryo.Dictionary.join(roundBox, {
				Color = StyleKey.ButtonDisabled,
				Transparency = 0.5
			}),
		}
	}
end

return {
	Controls = {
		Size = UDim2.new(1, 0, 0, 46),
		Padding = {
			Top = 5,
			Left = 11,
			Bottom = 11,
			Right = 11
		},

		PauseButton = buttonStyle("rbxasset://textures/DeveloperFramework/MediaPlayerControls/pause_button.png"),
		PlayButton = buttonStyle("rbxasset://textures/DeveloperFramework/MediaPlayerControls/play_button.png"),
	}
}