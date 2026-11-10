local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

local sizeDefault = UDim2.fromOffset(50, 32)
local sizeIconOnly = UDim2.fromOffset(16, 16)

return rule(".Component-ViewTypeSelector", {
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Size = sizeDefault,
	Width = 120,
}, {
	rule(".IconOnly", {
		Size = sizeIconOnly,
	}),
	rule(".List > .Component-SelectInput", {}, {
		rule("> ImageButton", {
			Image = "$ListImage",
		}, {}),
		rule("> TextButton > #SelectedItemIcon", {
			Image = "$ListImage",
		}, {}),
	}),
	rule(".Grid > .Component-SelectInput", {}, {
		rule("> ImageButton", {
			Image = "$GridImage",
		}, {}),
		rule("> TextButton > #SelectedItemIcon", {
			Image = "$GridImage",
		}, {}),
	}),
}, {
	MenuHeight = 64,
	MenuHeightSlider = 96,
	SizeDefault = sizeDefault,
	SizeIconOnly = sizeIconOnly,
})
