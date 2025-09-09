local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local ColorPicker = require(Foundation.Components.ColorPicker)
local ColorSlider = require(Foundation.Components.ColorPicker.ColorSlider)
local ColorSliderType = require(Foundation.Enums.ColorSliderType)
local useTokens = require(Foundation.Providers.Style.useTokens)

return {
	summary = "ColorPicker",
	stories = {
		{
			name = "Base",
			story = function(_props)
				local tokens = useTokens()
				local selectedColor, setSelectedColor = React.useState(tokens.Color.Extended.Blue.Blue_1100.Color3)
				local selectedAlpha, setSelectedAlpha = React.useState(1)

				local colorHex = React.useMemo(function()
					local r = math.floor(selectedColor.R * 255)
					local g = math.floor(selectedColor.G * 255)
					local b = math.floor(selectedColor.B * 255)
					return string.format("#%02X%02X%02X", r, g, b)
				end, { selectedColor })

				local colorHexWithAlpha = React.useMemo(function()
					local r = math.floor(selectedColor.R * 255)
					local g = math.floor(selectedColor.G * 255)
					local b = math.floor(selectedColor.B * 255)
					local a = math.floor(selectedAlpha * 255)
					return string.format("#%02X%02X%02X%02X", r, g, b, a)
				end, { selectedColor, selectedAlpha })

				return React.createElement(View, {
					Size = UDim2.fromOffset(300, 300),
					tag = "col gap-medium",
				}, {
					PreviewContainer = React.createElement(View, {
						tag = "row gap-medium auto-y size-full-0",
					}, {
						ColorSwatch = React.createElement(View, {
							Size = UDim2.fromOffset(64, 64),
							backgroundStyle = {
								Color3 = selectedColor,
								Transparency = 1 - selectedAlpha,
							},
							cornerRadius = UDim.new(0, 8),
							stroke = {
								Color = tokens.Color.System.Neutral.Color3,
								Transparency = tokens.Color.System.Neutral.Transparency,
								Thickness = 1,
							},
						}),

						ColorInfo = React.createElement(View, {
							tag = "col gap-xsmall auto-y flex-grow",
							layout = {
								FillDirection = Enum.FillDirection.Vertical,
								HorizontalAlignment = Enum.HorizontalAlignment.Left,
							},
						}, {
							HexLabel = React.createElement(Text, {
								Text = colorHex,
								fontStyle = tokens.Typography.BodyLarge,
								textStyle = tokens.Color.Content.Emphasis,
								TextXAlignment = Enum.TextXAlignment.Left,
								tag = "auto-y size-full-0",
							}),

							HexAlphaLabel = React.createElement(Text, {
								Text = colorHexWithAlpha,
								fontStyle = tokens.Typography.CaptionLarge,
								textStyle = tokens.Color.Content.Default,
								TextXAlignment = Enum.TextXAlignment.Left,
								tag = "auto-y size-full-0",
							}),

							RGBLabel = React.createElement(Text, {
								Text = string.format(
									"RGB(%d, %d, %d)",
									math.floor(selectedColor.R * 255),
									math.floor(selectedColor.G * 255),
									math.floor(selectedColor.B * 255)
								),
								fontStyle = tokens.Typography.CaptionLarge,
								textStyle = tokens.Color.Content.Default,
								TextXAlignment = Enum.TextXAlignment.Left,
								tag = "auto-y size-full-0",
							}),

							RGBALabel = React.createElement(Text, {
								Text = string.format(
									"RGBA(%d, %d, %d, %.2f)",
									math.floor(selectedColor.R * 255),
									math.floor(selectedColor.G * 255),
									math.floor(selectedColor.B * 255),
									selectedAlpha
								),
								fontStyle = tokens.Typography.CaptionLarge,
								textStyle = tokens.Color.Content.Default,
								TextXAlignment = Enum.TextXAlignment.Left,
								tag = "auto-y size-full-0",
							}),
						}),
					}),

					Picker = React.createElement(ColorPicker, {
						initialColor = selectedColor,
						initialAlpha = selectedAlpha,
						onColorChanged = setSelectedColor,
						onAlphaChanged = setSelectedAlpha,
					}),
				})
			end,
		},
		{
			name = "Without Alpha",
			story = function(_props)
				local tokens = useTokens()
				local selectedColor, setSelectedColor = React.useState(tokens.Color.Extended.Blue.Blue_1100.Color3)

				local colorHex = React.useMemo(function()
					local r = math.floor(selectedColor.R * 255)
					local g = math.floor(selectedColor.G * 255)
					local b = math.floor(selectedColor.B * 255)
					return string.format("#%02X%02X%02X", r, g, b)
				end, { selectedColor })

				return React.createElement(View, {
					Size = UDim2.fromOffset(300, 300),
					tag = "col gap-medium",
				}, {
					PreviewContainer = React.createElement(View, {
						tag = "row gap-medium auto-y size-full-0",
					}, {
						ColorSwatch = React.createElement(View, {
							Size = UDim2.fromOffset(64, 64),
							backgroundStyle = {
								Color3 = selectedColor,
								Transparency = 0, -- No transparency in this mode
							},
							cornerRadius = UDim.new(0, 8),
							stroke = {
								Color = tokens.Color.System.Neutral.Color3,
								Transparency = tokens.Color.System.Neutral.Transparency,
								Thickness = 1,
							},
						}),

						ColorInfo = React.createElement(View, {
							tag = "col gap-xsmall auto-y flex-grow",
							layout = {
								FillDirection = Enum.FillDirection.Vertical,
								HorizontalAlignment = Enum.HorizontalAlignment.Left,
							},
						}, {
							HexLabel = React.createElement(Text, {
								Text = colorHex,
								fontStyle = tokens.Typography.BodyLarge,
								textStyle = tokens.Color.Content.Emphasis,
								TextXAlignment = Enum.TextXAlignment.Left,
								tag = "auto-y size-full-0",
							}),

							RGBLabel = React.createElement(Text, {
								Text = string.format(
									"RGB(%d, %d, %d)",
									math.floor(selectedColor.R * 255),
									math.floor(selectedColor.G * 255),
									math.floor(selectedColor.B * 255)
								),
								fontStyle = tokens.Typography.CaptionLarge,
								textStyle = tokens.Color.Content.Default,
								TextXAlignment = Enum.TextXAlignment.Left,
								tag = "auto-y size-full-0",
							}),
						}),
					}),

					Picker = React.createElement(ColorPicker, {
						initialColor = selectedColor,
						onColorChanged = setSelectedColor,
					}),
				})
			end,
		},
		{
			name = "With Popover",
			story = function(_props)
				local tokens = useTokens()
				local selectedColor, setSelectedColor = React.useState(tokens.Color.Extended.Blue.Blue_1100.Color3)
				local selectedAlpha, setSelectedAlpha = React.useState(1)
				local isPopoverOpen, setIsPopoverOpen = React.useState(false)

				-- Track original values for Cancel functionality
				local originalColor, setOriginalColor = React.useState(tokens.Color.Extended.Blue.Blue_1100.Color3)
				local originalAlpha, setOriginalAlpha = React.useState(1)

				local colorHex = React.useMemo(function()
					local r = math.floor(selectedColor.R * 255)
					local g = math.floor(selectedColor.G * 255)
					local b = math.floor(selectedColor.B * 255)
					return string.format("#%02X%02X%02X", r, g, b)
				end, { selectedColor })

				local Popover = require(Foundation.Components.Popover)
				local Interactable = require(Foundation.Components.Interactable)
				local PopoverSide = require(Foundation.Enums.PopoverSide)

				return React.createElement(View, {
					Size = UDim2.fromOffset(600, 400),
					tag = "row align-x-center align-y-center",
				}, {
					PopoverContainer = React.createElement(Popover.Root, {
						isOpen = isPopoverOpen,
					}, {
						Anchor = React.createElement(
							Popover.Anchor,
							nil,
							React.createElement(View, {
								tag = "row gap-medium align-y-center auto-xy",
							}, {
								ColorSwatchButton = React.createElement(Interactable, {
									onActivated = function()
										if not isPopoverOpen then
											-- Save original values when opening popover
											setOriginalColor(selectedColor)
											setOriginalAlpha(selectedAlpha)
										end
										setIsPopoverOpen(not isPopoverOpen)
									end,
									Size = UDim2.new(0, 0, 0, 0),
									AutomaticSize = Enum.AutomaticSize.XY,
								}, {
									ButtonContainer = React.createElement(View, {
										tag = "row gap-small align-y-center padding-small radius-small stroke-neutral auto-xy",
										backgroundStyle = tokens.Color.Surface.Surface_100,
									}, {
										ColorSwatch = React.createElement(View, {
											Size = UDim2.fromOffset(24, 24),
											backgroundStyle = {
												Color3 = selectedColor,
												Transparency = 1 - selectedAlpha,
											},
											cornerRadius = UDim.new(0, 4),
											stroke = {
												Color = tokens.Color.System.Neutral.Color3,
												Transparency = tokens.Color.System.Neutral.Transparency,
												Thickness = 1,
											},
										}),

										ColorLabel = React.createElement(Text, {
											Text = colorHex,
											fontStyle = tokens.Typography.BodyMedium,
											textStyle = tokens.Color.Content.Default,
											tag = "auto-xy",
										}),
									}),
								}),
							})
						),

						Content = React.createElement(
							Popover.Content,
							{
								side = PopoverSide.Right,
								hasArrow = true,
								onPressedOutside = function()
									setIsPopoverOpen(false)
								end,
							},
							React.createElement(View, {
								tag = "col padding-medium gap-medium",
								Size = UDim2.fromOffset(300, 300),
							}, {
								Picker = React.createElement(ColorPicker, {
									initialColor = selectedColor,
									initialAlpha = selectedAlpha,
									onColorChanged = function(newColor)
										setSelectedColor(newColor)
									end,
									onAlphaChanged = function(newAlpha)
										setSelectedAlpha(newAlpha)
									end,
									LayoutOrder = 1,
								}),

								Actions = React.createElement(View, {
									tag = "row gap-small auto-y size-full-0 margin-top-medium align-x-right",
									LayoutOrder = 2,
								}, {
									CancelButton = React.createElement(Interactable, {
										onActivated = function()
											-- Revert to original values
											setSelectedColor(originalColor)
											setSelectedAlpha(originalAlpha)
											setIsPopoverOpen(false)
										end,
										Size = UDim2.new(0, 0, 0, 0),
										AutomaticSize = Enum.AutomaticSize.XY,
									}, {
										ButtonContainer = React.createElement(View, {
											tag = "padding-small radius-small auto-xy",
											backgroundStyle = tokens.Color.Surface.Surface_100,
											stroke = {
												Color = tokens.Color.System.Neutral.Color3,
												Transparency = tokens.Color.System.Neutral.Transparency,
												Thickness = 1,
											},
										}, {
											ButtonText = React.createElement(Text, {
												Text = "Cancel",
												fontStyle = tokens.Typography.BodyMedium,
												textStyle = tokens.Color.Content.Default,
												tag = "auto-xy",
											}),
										}),
									}),

									DoneButton = React.createElement(Interactable, {
										onActivated = function()
											-- Accept current values and close
											setIsPopoverOpen(false)
										end,
										Size = UDim2.new(0, 0, 0, 0),
										AutomaticSize = Enum.AutomaticSize.XY,
									}, {
										ButtonContainer = React.createElement(View, {
											tag = "padding-small radius-small auto-xy",
											backgroundStyle = tokens.Color.Surface.Surface_100,
											stroke = {
												Color = tokens.Color.System.Neutral.Color3,
												Transparency = tokens.Color.System.Neutral.Transparency,
												Thickness = 1,
											},
										}, {
											ButtonText = React.createElement(Text, {
												Text = "Done",
												fontStyle = tokens.Typography.BodyMedium,
												textStyle = tokens.Color.Content.Default,
												tag = "auto-xy",
											}),
										}),
									}),
								}),
							})
						),
					}),
				})
			end,
		},
		{
			name = "ColorSlider Components",
			story = function(_props)
				local hue, setHue = React.useBinding(0.5)
				local alpha, setAlpha = React.useBinding(0.8)
				--selene: allow(roblox_internal_custom_color)
				local baseColor, setBaseColor = React.useBinding(Color3.fromHSV(0.6, 1, 1))

				return React.createElement(View, {
					tag = "col gap-large padding-large",
					Size = UDim2.fromScale(1, 1),
					layout = {
						FillDirection = Enum.FillDirection.Vertical,
						SortOrder = Enum.SortOrder.LayoutOrder,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Top,
					},
				}, {
					HueSliderSection = React.createElement(View, {
						tag = "col gap-medium auto-y size-full-0",
						LayoutOrder = 1,
					}, {
						HueTitle = React.createElement(Text, {
							Text = "Hue Slider",
							fontStyle = useTokens().Typography.HeadingSmall,
							textStyle = useTokens().Color.Content.Default,
							tag = "auto-xy",
							LayoutOrder = 1,
						}),
						HueSlider = React.createElement(ColorSlider, {
							sliderType = ColorSliderType.Hue,
							value = hue,
							onValueChanged = function(newHue)
								setHue(newHue)
								--selene: allow(roblox_internal_custom_color)
								setBaseColor(Color3.fromHSV(newHue, 1, 1))
							end,
							min = 0,
							max = 1,
							step = 0.001,
							LayoutOrder = 2,
						}),
						HueValue = React.createElement(Text, {
							Text = hue:map(function(value)
								return string.format("Hue: %.3f (%.0f°)", value, value * 360)
							end),
							fontStyle = useTokens().Typography.CaptionLarge,
							textStyle = useTokens().Color.Content.Muted,
							tag = "auto-xy",
							LayoutOrder = 3,
						}),
					}),

					AlphaSliderSection = React.createElement(View, {
						tag = "col gap-medium auto-y size-full-0",
						LayoutOrder = 2,
					}, {
						AlphaTitle = React.createElement(Text, {
							Text = "Alpha Slider",
							fontStyle = useTokens().Typography.HeadingSmall,
							textStyle = useTokens().Color.Content.Default,
							tag = "auto-xy",
							LayoutOrder = 1,
						}),
						AlphaSlider = React.createElement(ColorSlider, {
							sliderType = ColorSliderType.Alpha,
							value = alpha,
							baseColor = baseColor,
							onValueChanged = setAlpha,
							min = 0,
							max = 1,
							step = 0.001,
							LayoutOrder = 2,
						}),
						AlphaValue = React.createElement(Text, {
							Text = alpha:map(function(value)
								return string.format("Alpha: %.3f (%.0f%%)", value, value * 100)
							end),
							fontStyle = useTokens().Typography.CaptionLarge,
							textStyle = useTokens().Color.Content.Muted,
							tag = "auto-xy",
							LayoutOrder = 3,
						}),
					}),

					ColorPreview = React.createElement(View, {
						tag = "col gap-small auto-y size-full-0",
						LayoutOrder = 3,
					}, {
						PreviewTitle = React.createElement(Text, {
							Text = "Color Preview",
							fontStyle = useTokens().Typography.HeadingSmall,
							textStyle = useTokens().Color.Content.Default,
							tag = "auto-xy",
							LayoutOrder = 1,
						}),
						Preview = React.createElement("Frame", {
							Size = UDim2.fromOffset(200, 60),
							BackgroundColor3 = baseColor,
							BackgroundTransparency = alpha:map(function(a)
								return 1 - a
							end),
							LayoutOrder = 2,
						}, {
							Corner = React.createElement("UICorner", {
								CornerRadius = UDim.new(0, 8),
							}),
						}),
					}),
				})
			end,
		},
	},
	controls = {},
}
