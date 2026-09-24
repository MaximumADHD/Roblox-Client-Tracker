local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

local StyleModifier = require(Framework.Util.StyleModifier)

local Image = require(Framework.UI.Components.Image)

return {
	Background = Image,
	BackgroundStyle = {
		Image = StyleKey.CheckboxUncheckedImage,
	},

	[StyleModifier.Selected] = {
		BackgroundStyle = {
			Image = StyleKey.CheckboxCheckedImage,
		},
	},
	[StyleModifier.Indeterminate] = {
		BackgroundStyle = {
			Image = StyleKey.CheckboxIndeterminateImage,
		},
	},
	[StyleModifier.Disabled] = {
		BackgroundStyle = {
			Image = StyleKey.CheckboxDisabledImage,
		},
	},
	ImageSize = UDim2.new(0, 16, 0, 16),
	Spacing = 6,
}
