--!strict

local Framework = script:FindFirstAncestor("UI").Parent
local rule = require(Framework.Styling.createStyleRule)

return rule(".Component-UseDialogLayout", {
	BackgroundColor3 = "$ForegroundMain",
	BorderSizePixel = 0,
}, {
	rule("> UIListLayout", {
		-- Bespoke padding
		Padding = "$IconToContentPadding",
	}),
	rule("::UIPadding", {
		-- Bespoke padding
		PaddingBottom = "$DialogPadding",
		PaddingLeft = "$DialogPadding",
		PaddingRight = "$DialogPadding",
		PaddingTop = "$DialogPadding",
	}),
	rule("> #Icon", {
		BackgroundTransparency = 1,
		Size = "$IconSize",
	}),
	rule(".Confirmation > #Icon", {
		Image = "$SuccessLargeImage",
	}),
	rule(".Destructive > #Icon, .Warning > #Icon", {
		Image = "$WarningLargeImage",
	}),
	rule(".Error > #Icon", {
		Image = "$ErrorLargeImage",
	}),
	rule(".Information > #Icon", {
		Image = "$InformationLargeImage",
	}),
	rule(".Question > #Icon", {
		Image = "$QuestionLargeImage",
	}),
	rule("> #Content", {
		BackgroundTransparency = 1,
	}, {
		rule("> UIListLayout, > #Children > UIListLayout", {
			-- Bespoke padding
			Padding = "$TextToButtonsPadding",
		}),
		rule("> #Text > UIListLayout", {
			-- Bespoke padding
			Padding = "$HeadingToBodyPadding",
		}),
		rule("> #Text, > #Children", {
			BackgroundTransparency = 1,
		}, {
			rule(">> TextLabel", {
				BackgroundTransparency = 1,
				Font = "$BodyFont",
				LineHeight = "$TextLineHeight",
				TextColor3 = "$TextPrimary",
				TextSize = "$TextSize",
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
			}, {
				-- LineHeight will space between the lines instead of around, so
				-- we add padding on the top and bottom to match design
				rule("::UIPadding", {
					PaddingBottom = "$TextVerticalPadding",
					PaddingTop = "$TextVerticalPadding",
				}),
				rule("#Heading", {
					Font = "$HeadingFont",
				}),
			}),
		}),
		rule("> #Buttons", {
			BackgroundTransparency = 1,
		}, {
			rule("> #RightAnchoredButtons", {
				BackgroundTransparency = 1,
			}, {
				rule("> UIListLayout", {
					-- Can't use X-Right since that'll create a new UIListLayout
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					-- Bespoke padding
					Padding = "$ButtonSpacing",
				}),
			}),
			rule("> TextButton, > #RightAnchoredButtons > TextButton", {
				AutoButtonColor = false,
				BorderSizePixel = 0,
				Font = "$ButtonFont",
				TextSize = "$TextSize",
			}, {
				rule("::UIPadding", {
					PaddingBottom = "$ButtonVerticalPadding",
					PaddingLeft = "$ButtonHorizontalPadding",
					PaddingRight = "$ButtonHorizontalPadding",
					PaddingTop = "$ButtonVerticalPadding",
				}),
				rule(".Primary", {
					BackgroundColor3 = "$PrimaryMain",
					TextColor3 = "$TextContrast",
				}, {
					rule(".Enabled :hover", {
						BackgroundColor3 = "$PrimaryHoverBackground",
					}),
				}),
				rule(".Secondary, .Tertiary", {
					BackgroundColor3 = "$SecondaryMain",
					TextColor3 = "$TextPrimary",
				}, {
					rule("::UIStroke", {
						ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
						Color = "$SecondaryRestingOutlineBorder",
					}),
					rule(".Enabled :hover", {
						BackgroundColor3 = "$SecondaryHoverBackground",
					}, {
						rule("> UIStroke", {
							Color = "$SecondaryHoverOutlineBorder",
						}),
					}),
				}),
				rule(".Disabled", {
					BackgroundTransparency = 0.5,
					TextTransparency = 0.5,
				}),
			}),
		}),
	}),
	rule(".Destructive > #Content > #Buttons > #RightAnchoredButtons > .Primary", {
		BackgroundColor3 = "$ErrorMain",
	}),
}, {
	BodyFont = Enum.Font.SourceSans,
	ButtonFont = Enum.Font.SourceSans,
	ButtonHorizontalPadding = UDim.new(0, 16),
	ButtonSpacing = UDim.new(0, 8),
	ButtonVerticalPadding = UDim.new(0, 6),
	DialogPadding = UDim.new(0, 16),
	HeadingFont = Enum.Font.SourceSansSemibold,
	HeadingToBodyPadding = UDim.new(0, 8),
	IconSize = UDim2.fromOffset(32, 32),
	IconToContentPadding = UDim.new(0, 16),
	MinimumDialogSize = Vector2.new(400, 144),
	TextLineHeight = 20 / 16,
	TextSize = 16,
	TextToButtonsPadding = UDim.new(0, 16),
	TextVerticalPadding = UDim.new(0, 2),
})
