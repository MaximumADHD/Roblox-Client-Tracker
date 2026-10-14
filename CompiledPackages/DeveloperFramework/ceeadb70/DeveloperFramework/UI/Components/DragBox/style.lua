local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

local StyleModifier = require(Framework.Util.StyleModifier)

local Image = require(Framework.UI.Components.Image)

local BAR_HEIGHT = 6
local BAR_SLICE_CENTER = Rect.new(3, 0, 4, 6)
local DRAGBOX_HANDLE_SIZE = 18

local knobStyle = {
	AnchorPoint = Vector2.new(0.5, 0.5),
	Color = StyleKey.SliderKnobColor,
	Image = StyleKey.SliderKnobImage,
	Size = UDim2.new(0, DRAGBOX_HANDLE_SIZE, 0, DRAGBOX_HANDLE_SIZE),
	[StyleModifier.Disabled] = {
		Color = StyleKey.Button,
	},
}

return {
	KnobSize = Vector2.new(18, 18),
	Background = Image,
	BackgroundStyle = {
		AnchorPoint = Vector2.new(0, 0.5),
		Color = StyleKey.SliderBackground,
		Position = UDim2.new(0, 0, 0.5, 0),
		ScaleType = Enum.ScaleType.Slice,
		Size = UDim2.new(UDim.new(1, 0), UDim.new(0, BAR_HEIGHT)),
		SliceCenter = BAR_SLICE_CENTER,
		BackgroundTransparency = 1,
		ImageTransparency = 1,
	},
	OutlineStyle = {
		Color = Color3.fromRGB(87, 87, 87),
	},
	KnobBackground = Image,
	KnobBackgroundStyle = knobStyle,
}
