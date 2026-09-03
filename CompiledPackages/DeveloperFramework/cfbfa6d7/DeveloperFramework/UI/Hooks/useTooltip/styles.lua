local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

return rule(".Component-useTooltip", {}, {
	rule(".Role-Tooltip", {
		BackgroundColor3 = "$SemanticColorSurface300Inverse",
		BorderColor3 = "$SemanticColorDivider",
		BorderMode = Enum.BorderMode.Inset,
		BorderSizePixel = 2,
	}),
	rule(">> .Role-Surface", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}),
	rule(">> .Text-Label", {
		Font = Enum.Font.SourceSans,
		TextColor3 = "$SemanticColorContentStandardInverse",
		TextSize = 14 * 1.257, -- https://roblox.atlassian.net/wiki/spaces/UIC/pages/1588593513/Font+Metrics+Procedural+Formatting#Roblox-Text-Size-&-Spacing
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}),
	rule(">> .Text-Title", {
		Font = Enum.Font.SourceSansBold,
		TextColor3 = "$SemanticColorContentStandardInverse",
		TextSize = 14 * 1.257, -- https://roblox.atlassian.net/wiki/spaces/UIC/pages/1588593513/Font+Metrics+Procedural+Formatting#Roblox-Text-Size-&-Spacing
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}),
	rule(">> .TooltipTextBounds", {
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
	}, {
		rule("::UISizeConstraint", {
			MaxSize = Vector2.new(400, math.huge),
		}),
	}),
	rule(">> .X-PadTooltip ::UIPadding", {
		PaddingLeft = UDim.new(0, 6),
		PaddingRight = UDim.new(0, 6),
		PaddingTop = UDim.new(0, 4),
		PaddingBottom = UDim.new(0, 4),
	}),
	rule(">> .X-RowSpace50", {}, {
		rule("::UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 4),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}),
})
