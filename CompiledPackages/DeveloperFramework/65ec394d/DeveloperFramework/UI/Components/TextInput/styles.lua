local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

return rule(".Component-TextInput", {}, {
	rule(".Input", {
		ClipsDescendants = true,
	}),
	rule(">> TextBox", {
		Font = Enum.Font.SourceSans,
		TextXAlignment = Enum.TextXAlignment.Left,
		PlaceholderTextColor3 = "$TextDisabled",
		TextColor3 = "$TextPrimary",
		TextSize = "$InputTextSize",
	}),
	rule(".Compact >> TextBox", {
		TextSize = "$CompactInputTextSize",
	}),
	rule(".PropertyCellError >> TextBox", {
		TextColor3 = "$TextError",
	}),
}, {
	Size = UDim2.new(1, 0, 0, 32),
	InputTextSize = 18,
	CompactInputTextSize = 14,
	HorizontalComponentSpacing = 10,
	VerticalComponentSpacing = 5,
})
