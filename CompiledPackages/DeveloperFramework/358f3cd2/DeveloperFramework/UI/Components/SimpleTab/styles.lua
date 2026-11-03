local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

return rule(".Component-SimpleTab", {}, {
	rule(":: UIPadding", {
		PaddingLeft = UDim.new(0, 1),
		PaddingRight = UDim.new(0, 1),
	}),
	rule("> .Contents", {
		AutomaticSize = Enum.AutomaticSize.X,
		BorderSizePixel = 1,
		BorderColor3 = "$SecondaryMain",
		Size = UDim2.fromOffset(0, 32),
	}, {
		rule(".TabSelected", {
			BorderColor3 = "$Divider",
		}),
		rule("::UIPadding", {
			PaddingLeft = UDim.new(0, 20),
			PaddingTop = UDim.new(0, 4),
			PaddingBottom = UDim.new(0, 0),
			PaddingRight = UDim.new(0, 20),
		}),
		rule("> ImageLabel", {
			ImageColor3 = "$PrimaryText",
		}),
	}),
	rule("> .TopLine", {
		BackgroundColor3 = "$PrimaryMain",
		BackgroundTransparency = 0,
		Size = UDim2.new(1, 0, 0, 3),
		ZIndex = 2,
	}),
	rule("> .BottomLine", {
		AnchorPoint = Vector2.new(0, 1),
		BackgroundColor3 = "$SecondaryMain",
		BackgroundTransparency = 0,
		Position = UDim2.fromOffset(0, 33),
		Size = UDim2.new(1, 0, 0, 1),
	}, {
		rule(".TabSelected", {
			BackgroundColor3 = "$ForegroundMuted",
		}),
	}),
})
