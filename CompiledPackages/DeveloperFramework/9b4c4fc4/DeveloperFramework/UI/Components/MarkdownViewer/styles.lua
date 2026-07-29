local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

return rule(".Component-Markdown", {}, {
	rule(">> .Header ::UIPadding", {
		PaddingTop = UDim.new(0, 20),
	}),
	rule(">> .Paragraph ::UIPadding", {
		PaddingTop = UDim.new(0, 10),
	}),
	rule(">> .List", {}, {
		rule("::UIPadding", {
			PaddingTop = UDim.new(0, 10),
		}),
		rule(">> .ListItem ::UIPadding", {
			PaddingTop = UDim.new(0, 2),
		}),
	}),
	rule(">> .CodeBlock", {}, {
		rule("::UIPadding", {
			PaddingTop = UDim.new(0, 10),
			PaddingBottom = UDim.new(0, 10),
		}),
		rule(">> .CopyButton", {
			Size = UDim2.fromOffset(24, 24),
			BackgroundTransparency = 1,
			Text = "",
		}, {
			rule(">> .CopyIcon", {
				Size = UDim2.fromOffset(16, 16),
				Image = "$CopyImage",
				ImageColor3 = "$TextPrimary",
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
			}),
		}),
		rule(">> .LineNumbers", {
			Size = UDim2.new(0, 0, 0, 0),
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 0,
			BackgroundColor3 = "$BackgroundPaper",
			TextXAlignment = Enum.TextXAlignment.Right,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextWrapped = false,
		}),
		rule(">> .CodeScroller ::UIFlexItem", {
			FlexMode = Enum.UIFlexMode.Fill,
		}),
	}),
	rule(">> .HorizontalRule ::UIPadding", {
		PaddingTop = UDim.new(0, 10),
	}),
	rule(">> #1 > UIPadding", {
		PaddingTop = UDim.new(0, 0),
		PaddingBottom = UDim.new(0, 0),
	}),
})
