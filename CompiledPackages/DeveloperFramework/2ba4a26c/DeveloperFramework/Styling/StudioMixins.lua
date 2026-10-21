-- NOTE: CHANGING KEYS HERE?
-- Increment STUDIO_DESIGN_VERSION in src/Styling/registerPluginStyles.lua
local Framework = script.Parent.Parent
local FoundationDark = require(Framework.Style.Themes.FoundationDark)
local foundationDarkTheme = FoundationDark(1)

local getFFlagDevFrameworkFixInputBackground = require(Framework.SharedFlags.getFFlagDevFrameworkFixInputBackground)

local rule = require(script.Parent.createStyleRule)

return {
	rule(".X-Fill", {
		Size = UDim2.fromScale(1, 1),
	}),
	rule(".X-Fit", {
		AutomaticSize = Enum.AutomaticSize.XY,
		Size = UDim2.fromScale(0, 0),
	}),
	rule(".X-FitX", {
		AutomaticSize = Enum.AutomaticSize.X,
		Size = UDim2.fromScale(0, 1),
	}),
	rule(".X-FitY", {
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.fromScale(1, 0),
	}),
	rule(".X-PadXS ::UIPadding", {
		PaddingLeft = UDim.new(0, 2),
		PaddingRight = UDim.new(0, 2),
		PaddingTop = UDim.new(0, 2),
		PaddingBottom = UDim.new(0, 2),
	}),
	rule(".X-PadS ::UIPadding", {
		PaddingLeft = UDim.new(0, 5),
		PaddingRight = UDim.new(0, 5),
		PaddingTop = UDim.new(0, 5),
		PaddingBottom = UDim.new(0, 5),
	}),
	rule(".X-Pad ::UIPadding", {
		PaddingLeft = UDim.new(0, 10),
		PaddingRight = UDim.new(0, 10),
		PaddingTop = UDim.new(0, 10),
		PaddingBottom = UDim.new(0, 10),
	}),
	rule(".X-PadL ::UIPadding", {
		PaddingLeft = UDim.new(0, 20),
		PaddingRight = UDim.new(0, 20),
		PaddingTop = UDim.new(0, 20),
		PaddingBottom = UDim.new(0, 20),
	}),
	rule(".X-Row", {}, {
		rule("::UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}),
	rule(".X-RowS", {}, {
		rule("::UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 5),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}),
	rule(".X-RowM", {}, {
		rule("::UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 10),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}),
	rule(".X-Column", {}, {
		rule("::UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}),
	rule(".X-ColumnS", {}, {
		rule("::UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, 5),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}),
	rule(".X-ColumnM", {}, {
		rule("::UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, 10),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	}),
	rule(".X-Top", {}, {
		rule("::UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}),
	}),
	rule(".X-Middle", {}, {
		rule("::UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
	}),
	rule(".X-Bottom", {}, {
		rule("::UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Bottom,
		}),
	}),
	rule(".X-Left", {}, {
		rule("::UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}),
	}),
	rule(".X-Center", {}, {
		rule("::UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
		}),
	}),
	rule(".X-Right", {}, {
		rule("::UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
		}),
	}),
	rule(".X-AnchorCenter", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
	}),
	rule(".X-Corner ::UICorner", {
		CornerRadius = UDim.new(0, 4),
	}),
	rule(".X-Stroke ::UIStroke", {
		Color = "$Divider",
		Thickness = 1,
	}),
	rule(".X-Border", {
		BorderColor3 = "$Divider",
		BorderSizePixel = 1,
	}),
	rule(".X-Clip", {
		ClipsDescendants = true,
	}),
	rule(".X-Input", {
		BackgroundColor3 = "$FilledInputBackground",
		BackgroundTransparency = if not getFFlagDevFrameworkFixInputBackground()
			then foundationDarkTheme.Color.Shift.Shift_200.Transparency
			else 0,
	}, {
		rule("::UICorner", {
			CornerRadius = UDim.new(0, 4),
		}),
		rule("::UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Color = "$Divider",
			Thickness = 1,
		}),
		rule("&:hover::UIStroke", {
			Color = "$ActionFocusBorder",
		}),
	}),
	rule(".X-Focus ::UIStroke", {
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Color = "$ActionFocusBorder",
		Thickness = 1,
	}),
	rule(".X-Error ::UIStroke", {
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Color = "$TextError",
		Thickness = 1,
	}),
	rule(".X-Success ::UIStroke", {
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Color = "$TextSuccess",
		Thickness = 1,
	}),
	rule(".X-Warning ::UIStroke", {
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Color = "$TextWarning",
		Thickness = 1,
	}),
	rule(".X-Transparent", {
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
	}),
	rule(".X-DefaultSize", {
		Size = UDim2.fromScale(0, 0),
	}),
	rule(".X-DefaultTransparency", {
		BackgroundTransparency = 0,
	}),
}
