local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

return rule(".Component-SelectInput", {
	AutoButtonColor = false,
	BackgroundTransparency = 1,
	Size = UDim2.new(0, 240, 0, 32),
	Text = "",
}, {
	rule("> TextButton", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 32),
	}, {
		rule("> #SelectedItemIcon", {
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, 10, 0.5, 0),
		}),
		rule("> #SelectedItemText", {
			Position = UDim2.fromOffset(10, 0),
			Size = UDim2.new(1, -30, 1, -2),
		}),
		rule("> #SelectArrow", {
			AnchorPoint = Vector2.new(1, 0.5),
			Size = UDim2.fromOffset(12, 12),
			Position = UDim2.new(1, -5, 0.5, 0),
		}),
		rule(".Placeholder > #SelectedItemText", {
			TextColor = "$TextSecondary",
		}),
		rule(".HasIcon > #SelectedItemText", {
			Position = UDim2.fromOffset(36, 0),
			Size = UDim2.new(1, -46, 1, -2),
		}),
	}),
	rule(".HasError", {
		Size = UDim2.fromOffset(240, 64),
	}),
	rule("> ImageButton", {
		BackgroundTransparency = 1,
		Image = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png",
		Size = UDim2.fromScale(1, 1),
	}),
	rule(".modern", {}, {
		rule(">> #SelectedItemText", {
			Font = Enum.Font.BuilderSansBold,
		}),
		rule(">> .Component-SelectInput-Selection", {
			BackgroundColor3 = "$Gray70",
			BackgroundTransparency = 0,
		}, {
			rule("::UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
			rule("::UIStroke", {
				Thickness = 0,
			}),
			rule(":hover", {
				BackgroundColor3 = "$SelectInputHoverBackground",
				BackgroundTransparency = 0,
			}),
		}),
	}),
}, {
	ArrowOffset = 22,
	ErrorHeight = 32,
	Height = 32,
	IconOffset = 26,
})
