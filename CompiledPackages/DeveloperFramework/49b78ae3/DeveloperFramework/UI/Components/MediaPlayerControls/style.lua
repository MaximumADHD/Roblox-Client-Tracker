local Framework = script:FindFirstAncestor("UI").Parent

local RoundBox = require(Framework.UI.Components.RoundBox)
local Image = require(Framework.UI.Components.Image)

local Util = require(Framework.Util)
local Cryo = require(Framework.Parent.Cryo)
local StyleModifier = require(Framework.Util.StyleModifier)
local deepCopy = Util.deepCopy

local StyleKey = require(Framework.Style.StyleKey)

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local RoundBoxStyle = require(UIFolderData.RoundBox.style)
local Slider = require(UIFolderData.Slider.style)

local roundBox = deepCopy(RoundBoxStyle)
local slider = deepCopy(Slider)
local function buttonStyle(image)
	return {
		Size = UDim2.fromOffset(28, 28),

		Foreground = Image,
		ForegroundStyle = {
			Image = image,
		},

		Background = RoundBox,
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
				Transparency = 0.5,
			}),
		},
	}
end

return {
	Scrubber = Cryo.Dictionary.join(slider, {
		UpperKnobBackground = nil,
		UpperKnobBackgroundStyle = {},
		Size = UDim2.new(1, slider.KnobSize.X, 0, 15),
	}),
	Controls = {
		Size = UDim2.new(1, 0, 0, 46),
		Padding = {
			Top = 5,
			Left = 11,
			Bottom = 11,
			Right = 11,
		},

		PauseButton = buttonStyle("rbxasset://textures/DeveloperFramework/MediaPlayerControls/pause_button.png"),
		PlayButton = buttonStyle("rbxasset://textures/DeveloperFramework/MediaPlayerControls/play_button.png"),
	},
}
