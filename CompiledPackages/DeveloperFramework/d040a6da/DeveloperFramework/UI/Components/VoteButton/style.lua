local Framework = script:FindFirstAncestor("UI").Parent

local RoundBox = require(Framework.UI.Components.RoundBox)
local Image = require(Framework.UI.Components.Image)
local Util = require(Framework.Util)
local Cryo = require(Framework.Parent.Cryo)
local deepCopy = Util.deepCopy
local StyleModifier = require(Framework.Util.StyleModifier)
local StyleKey = require(Framework.Style.StyleKey)

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local RoundBoxStyle = require(UIFolderData.RoundBox.style)

local roundBox = deepCopy(RoundBoxStyle)

local function buttonStyle(selectedColor, imageRotation)
	local base = {
		Background = RoundBox,
		BackgroundStyle = Cryo.Dictionary.join(roundBox, {
			Color = StyleKey.ImageButtonBackground,
		}),
		Foreground = Image,
		Size = UDim2.fromOffset(28, 28),
		ThumbStyle = {
			Size = UDim2.new(0, 12, 0, 15),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Rotation = imageRotation,
			BackgroundTransparency = 1,
			Image = "rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png",
		},

		[StyleModifier.Disabled] = {
			BackgroundStyle = Cryo.Dictionary.join(roundBox, {
				Color = StyleKey.ButtonDisabled,
			}),
		},

		[StyleModifier.Selected] = {
			BackgroundStyle = Cryo.Dictionary.join(roundBox, {
				Color = selectedColor,
			}),
		},
	}

	return Cryo.Dictionary.join(base, {
		CanVote = Cryo.Dictionary.join(base, {
			[StyleModifier.Hover] = {
				BackgroundStyle = Cryo.Dictionary.join(roundBox, {
					Color = StyleKey.ImageButtonHover,
				}),
			},
		}),
	})
end

return {
	["&UpVote"] = buttonStyle(StyleKey.SuccessMain, 0),
	["&DownVote"] = buttonStyle(StyleKey.ErrorMain, 180),
}
