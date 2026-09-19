local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

return rule(".Component-TextLabel", {
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Font = "$TextLabelFont",
	Size = UDim2.fromScale(1, 1),
	TextSize = "$TextLabelTextSize",
	TextColor3 = "$TextPrimary",
}, {
	rule(".Disabled", {
		TextTransparency = 0.5,
	}),
	rule(".Body", {
		TextSize = 14,
		TextColor3 = "$TextSecondary",
	}),
	rule(".Bold", {
		Font = Enum.Font.SourceSansBold,
	}),
	rule(".Semibold", {
		Font = Enum.Font.SourceSansSemibold,
		TextSize = 22,
	}),
	rule(".SubText", {
		TextColor3 = "$TextSecondary",
	}),
	rule(".Label", {
		TextColor3 = "$TextSecondary",
	}),
	rule(".Selected", {
		TextColor3 = "$TextLink",
	}),
	rule(".Subtitle", {
		TextColor3 = "$TextSecondary",
		TextSize = 22,
	}),
	rule(".Title", {
		TextSize = "$TextLabelTitleSize",
	}),
	rule(".Contrast", {
		TextColor3 = "$TextContrast",
	}),
	rule(".Success", {
		TextColor3 = "$TextSuccess",
	}),
	rule(".Error", {
		TextColor3 = "$TextError",
	}),
	rule(".Warning", {
		TextColor3 = "$TextWarning",
	}),
	rule(".Monospace", {
		Font = Enum.Font.RobotoMono,
		TextSize = 14,
	}),
	rule(".Wrap", {
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
	}),
	rule(".Truncate", {
		TextTruncate = Enum.TextTruncate.AtEnd,
	}),
	rule(".Left", {
		TextXAlignment = Enum.TextXAlignment.Left,
	}),
	rule(".Right", {
		TextXAlignment = Enum.TextXAlignment.Right,
	}),
	rule(".Top", {
		TextYAlignment = Enum.TextYAlignment.Top,
	}),
	rule(".Bottom", {
		TextYAlignment = Enum.TextYAlignment.Bottom,
	}),
	rule(".BuilderSans", {
		Font = Enum.Font.BuilderSans,
	}, {
		rule(".Bold", {
			Font = Enum.Font.BuilderSansBold,
		}),
		rule(".Semibold", {
			Font = Enum.Font.BuilderSansMedium,
			TextSize = 22,
		}),
	}),
	rule(".Muted", {
		TextColor3 = "$ContentMuted",
	}),
}, {
	TextLabelFont = Enum.Font.SourceSans,
	TextLabelTextSize = 16,
	TextLabelTitleSize = 24,
})
