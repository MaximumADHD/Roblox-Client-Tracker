--!strict
local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local Framework = require(ViewportToolingFramework.Parent.Framework)

local rule = Framework.Styling.createStyleRule

local ICON_SIZE = 32
local CORNER_PADDING = 2
local TOOLBAR_DOMINANT_SIZE = ICON_SIZE + 8
local TOOLBAR_TOTAL_SIZE = TOOLBAR_DOMINANT_SIZE + 2 * CORNER_PADDING
local TOOLBARS_GAP = 4
local SEPARATOR_BAR_SIZE = 2
local SEPARATOR_PADDING_SIZE = 8

local TOOLBAR_DISTANCE_FROM_EDGE = 16 + CORNER_PADDING

local function createStyle(): { StyleRule? }
	return {
		-- Native elements
		rule("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}),

		rule("ImageLabel", {
			BackgroundTransparency = 1,
		}),

		rule("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		rule("TextButton", {
			AutoButtonColor = false,
			BorderSizePixel = 0,
			Font = Enum.Font.SourceSans,
			Text = "",
		}),

		rule("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.SourceSans,
			TextColor3 = "$TextPrimary",
			TextSize = 16,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
		}),

		-- Components
		rule(".VPF-Button", {
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
		}, {
			rule("::UICorner", {
				CornerRadius = UDim.new(0, 4),
			}),

			rule(".VPF-Button--Selected", {
				BackgroundTransparency = 0,
				BackgroundColor3 = "$ActionActivated",
			}),

			rule(".VPF-Button--Disabled", {
				BackgroundTransparency = 1,
			}, {
				rule(">> .VPF-Icon", {
					ImageTransparency = 0.5,
				}),
			}),

			rule(".VPF-Button--Unselected", {}, {
				rule(":hover", {
					BackgroundTransparency = 0,
					BackgroundColor3 = "$ActionHover",
				}),

				rule(":press", {
					BackgroundTransparency = 0,
					BackgroundColor3 = "$ActionActivated",
				}),
			}),
		}),

		rule(".VPF-Icon", {
			ImageColor3 = "$TextPrimary",
			Size = UDim2.fromScale(1, 1),
		}, {
			rule("::UIAspectRatioConstraint"),
		}),

		rule(".VPF-Label", {
			AutomaticSize = Enum.AutomaticSize.X,
			Size = UDim2.fromScale(0, 1),
			TextYAlignment = Enum.TextYAlignment.Center,
			TextSize = 18,
			TextColor3 = "$TextPrimary",
		}),

		rule(".VPF-SeparatorBar", {
			BackgroundColor3 = "$Divider",
			BackgroundTransparency = 0,
		}),

		rule(".VPF-Slider", {
			AutomaticSize = Enum.AutomaticSize.X,
			Size = UDim2.fromOffset(0, 24),
		}, {
			rule("::UIPadding", {
				PaddingRight = UDim.new(0, 5),
			}),

			rule("::UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, 12),
			}),

			rule(">> .VPF-Slider__BarSegment", {
				BackgroundColor3 = "$TextPrimary",
				BackgroundTransparency = 0,
				Size = UDim2.fromOffset(8, 2),
			}, {
				rule("::UICorner", {
					CornerRadius = UDim.new(0, 4),
				}),
			}),

			rule(">> .VPF-Slider__Input", {
				BackgroundColor3 = "$ActionActivated",
				BorderSizePixel = 0,
				ClearTextOnFocus = false,
				Font = Enum.Font.SourceSans,
				TextColor3 = "$TextPrimary",
				TextSize = 18,
			}, {
				rule("::UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = "$ActionActivated",
					Thickness = 1,
				}),
			}),

			rule(">> .VPF-Slider__StepButton", {
				BackgroundColor3 = "$SecondaryMain",
				Size = UDim2.new(0, 20, 1, 0),
			}, {
				rule("::UICorner", {
					CornerRadius = UDim.new(0, 4),
				}),

				rule("::UIStroke", {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = "$ActionActivated",
					Thickness = 1,
				}),
			}),

			rule(".VPF-Slider--Disabled >> .VPF-Slider__StepButton", {
				BackgroundColor3 = "$SecondaryMuted",
			}),

			rule(".VPF-Slider--Enabled >> .VPF-Slider__StepButton", {}, {
				rule(":hover", {
					BackgroundColor3 = "$SecondaryContrast",
				}),
			}),
		}),

		rule(".VPF-TextButton", {
			AutomaticSize = Enum.AutomaticSize.X,
			BackgroundColor3 = "$PrimaryMain",
			Font = Enum.Font.SourceSans,
			Size = UDim2.fromScale(0, 1),
			TextColor3 = "$TextContrast",
			TextSize = 20,
		}, {
			rule("::UICorner", {
				CornerRadius = UDim.new(0, 4),
			}),

			rule("::UIPadding", {
				PaddingLeft = UDim.new(0, 14),
				PaddingRight = UDim.new(0, 14),
				PaddingTop = UDim.new(0, 5),
				PaddingBottom = UDim.new(0, 5),
			}),

			rule(":hover", {
				BackgroundColor3 = "$PrimaryHoverBackground",
			}),

			rule(".VPF-TextButton--Disabled", {
				BackgroundColor3 = "$SecondaryContrast",
				TextColor3 = "$SecondaryMuted",
			}, {
				rule(":hover", {
					BackgroundColor3 = "$SecondaryContrast",
				}),
			}),
		}),

		rule(".VPF-Toolbar", {
			AutomaticSize = Enum.AutomaticSize.XY,
		}, {
			-- TODO: Other directions
			rule(".VPF-Toolbar--Horizontal", {}, {
				rule(".VPF-Toolbar--Center", {
					AnchorPoint = Vector2.new(0.5, 0),
					Position = UDim2.new(0.5, 0, 0, TOOLBAR_DISTANCE_FROM_EDGE),
				}),

				rule(".VPF-Toolbar--Left", {
					AnchorPoint = Vector2.new(0, 0),
					Position = UDim2.fromOffset(TOOLBAR_DISTANCE_FROM_EDGE, TOOLBAR_DISTANCE_FROM_EDGE),
				}),
			}),

			rule(".VPF-Toolbar--Vertical", {}, {
				rule(".VPF-Toolbar--Center", {
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(0, TOOLBAR_DISTANCE_FROM_EDGE, 0.5, 0),
				}),

				rule(".VPF-Toolbar--Top", {
					AnchorPoint = Vector2.new(0, 0),
					Position = UDim2.new(
						0,
						TOOLBAR_DISTANCE_FROM_EDGE,
						0,
						TOOLBAR_DISTANCE_FROM_EDGE + TOOLBAR_TOTAL_SIZE + TOOLBARS_GAP
					),
				}),

				rule(".VPF-Toolbar--Bottom", {
					AnchorPoint = Vector2.new(0, 1),
					Position = UDim2.new(0, TOOLBAR_DISTANCE_FROM_EDGE, 1, -TOOLBAR_TOTAL_SIZE),
				}),
			}),
		}),

		rule(".VPF-ToolbarBase", {
			BackgroundColor3 = "$ForegroundMain",
			BackgroundTransparency = 0,
		}, {
			rule("::UICorner", {
				CornerRadius = UDim.new(0, 5),
			}),

			rule("::UIPadding", {
				PaddingLeft = UDim.new(0, 4),
				PaddingRight = UDim.new(0, 4),
				PaddingTop = UDim.new(0, 4),
				PaddingBottom = UDim.new(0, 4),
			}),

			rule("::UIStroke", {
				Color = "$BackgroundDefault",
				Thickness = 2,
			}),

			rule(".VPF-ToolbarBase--Horizontal", {
				AutomaticSize = Enum.AutomaticSize.X,
				Size = UDim2.fromOffset(0, TOOLBAR_DOMINANT_SIZE),
			}, {
				rule("::UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = "$ButtonSpacing",
				}),

				rule("> .VPF-Separator", {
					Size = UDim2.new(0, SEPARATOR_PADDING_SIZE, 1, 0),
				}, {
					rule("> .VPF-SeparatorBar", {
						AnchorPoint = Vector2.new(0.5, 0),
						Position = UDim2.fromScale(0.5, 0),
						Size = UDim2.new(0, SEPARATOR_BAR_SIZE, 1, 0),
					}),
				}),
			}),

			rule(".VPF-ToolbarBase--Vertical", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.fromOffset(TOOLBAR_DOMINANT_SIZE, 0),
			}, {
				rule("::UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					Padding = "$ButtonSpacing",
				}),

				rule("> .VPF-Separator", {
					Size = UDim2.new(1, 0, 0, SEPARATOR_PADDING_SIZE),
				}, {
					rule("> .VPF-SeparatorBar", {
						AnchorPoint = Vector2.new(0, 0.5),
						Position = UDim2.fromScale(0, 0.5),
						Size = UDim2.new(1, 0, 0, SEPARATOR_BAR_SIZE),
					}),
				}),
			}),
		}, {
			ButtonSpacing = UDim.new(0, 4),
		}),

		rule(".VPF-Tooltip", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundColor3 = "$White",
			BackgroundTransparency = 0,
		}, {
			rule("::UIStroke", {
				Thickness = 1,
				Color = "$Gray80",
				LineJoinMode = Enum.LineJoinMode.Round,
			}),

			rule(">> .VPF-Tooltip__Title", {
				AutomaticSize = Enum.AutomaticSize.XY,
				Font = Enum.Font.SourceSansBold,
				TextColor3 = "$Gray120",
				TextSize = 14,
			}),

			rule(">> .VPF-Tooltip__Description", {
				TextColor3 = "$Gray120",
				TextWrapped = true,
			}),

			rule(".VPF-Tooltip--Horizontal", {
				Position = UDim2.new(0, 0, 1, 12),
			}),

			rule(".VPF-Tooltip--Vertical", {
				Position = UDim2.new(1, 8, 0, 0),
			}),
		}),

		-- Mixins
		rule(".VPF-X-ContrastBg", {
			BackgroundColor3 = "$ForegroundContrast",
			BackgroundTransparency = 0,
		}),

		rule(".VPF-X-DebugPink", {
			BackgroundTransparency = 0,
			BackgroundColor3 = Color3.new(1, 0, 1),
		}),

		rule(".VPF-X-MainBg", {
			BackgroundColor3 = "$ForegroundMain",
			BackgroundTransparency = 0,
		}),

		rule(".VPF-X-Primary", {
			ImageColor3 = "$TextPrimary",
		}),

		rule(".VPF-X-Square", {}, {
			rule("::UIAspectRatioConstraint"),
		}),
	} :: { StyleRule? }
end

return createStyle
