local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)
local FoundationDark = require(Framework.Style.Themes.FoundationDark)
local foundationDarkTheme = FoundationDark(1)
local getFFlagDevFrameworkFixInputBackground = require(Framework.SharedFlags.getFFlagDevFrameworkFixInputBackground)

return rule(".Component-Pane", {
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	Size = UDim2.fromScale(1, 1),
}, {
	rule(".Default", {
		BackgroundColor3 = "$BackgroundDefault",
		BackgroundTransparency = 0,
	}),
	rule(".Paper", {
		BackgroundColor3 = "$BackgroundPaper",
		BackgroundTransparency = 0,
	}),
	rule(".Main", {
		BackgroundColor3 = "$BackgroundDefault",
		BackgroundTransparency = 0,
	}),
	rule(".Muted", {
		BackgroundColor3 = "$ForegroundMuted",
		BackgroundTransparency = 0,
	}),
	rule(".Contrast", {
		BackgroundColor3 = "$ForegroundContrast",
		BackgroundTransparency = 0,
	}),
	rule(".PrimaryBrand", {
		BackgroundColor3 = "$PrimaryMain",
		BackgroundTransparency = 0,
		TextColor3 = "$TextPrimary",
	}, {
		rule(":hover", {
			BackgroundColor3 = "$PrimaryHoverBackground",
		}),
	}),
	rule(".Primary", {
		BackgroundColor3 = "$TextPrimary",
		BackgroundTransparency = 0,
	}, {
		rule(":hover", {
			BackgroundColor3 = "$TextSecondary",
		}),
	}),
	rule(".Secondary", {
		BackgroundColor3 = "$SecondaryMain",
		BackgroundTransparency = 0,
	}, {
		rule(":hover", {
			BackgroundColor3 = "$SecondaryHoverBackground",
		}),
	}),
	rule(".Row", {
		BackgroundColor3 = "$FilledInputBackground",
		BackgroundTransparency = if not getFFlagDevFrameworkFixInputBackground()
			then foundationDarkTheme.Color.Shift.Shift_200.Transparency
			else 0,
	}, {
		rule(":hover", {
			BackgroundColor3 = "$ForegroundContrast",
		}),
	}),
	rule(".Selected", {
		BackgroundColor3 = "$ActionSelected",
		BackgroundTransparency = 0,
	}),
	rule(".Input", {
		BackgroundColor3 = "$FilledInputBackground",
		BackgroundTransparency = if not getFFlagDevFrameworkFixInputBackground()
			then foundationDarkTheme.Color.Shift.Shift_200.Transparency
			else 0,
	}),
})
