local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

local StyleModifier = require(Framework.Util.StyleModifier)

local Image = require(Framework.UI.Components.Image)

return {
	Padding = 6,
	ImageSize = UDim2.new(0, 20, 0, 20),
	BackgroundStyle = {
		Background = Image,
		BackgroundStyle = {
			Image = StyleKey.RadioOffImage,
		},
		[StyleModifier.Selected] = {
			BackgroundStyle = {
				Image = StyleKey.RadioOnImage,
			},
		},
		[StyleModifier.Disabled] = {
			BackgroundStyle = {
				Image = StyleKey.RadioOffImage,
			},
		},
		[StyleModifier.Indeterminate] = {
			BackgroundStyle = {
				Image = StyleKey.RadioOffImage,
			},
		},
	},
}
