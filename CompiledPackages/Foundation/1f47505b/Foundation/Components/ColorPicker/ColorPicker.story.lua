local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local ColorInputMode = require(Foundation.Enums.ColorInputMode)
local ColorPicker = require(Foundation.Components.ColorPicker)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

type ColorPreviewProps = {
	color: Color3,
	alpha: number?,
	LayoutOrder: number?,
	showAlpha: boolean?,
}

local function ColorPreview(props: ColorPreviewProps)
	local tokens = useTokens()

	local colorHex = React.useMemo(function()
		local r = math.floor(props.color.R * 255)
		local g = math.floor(props.color.G * 255)
		local b = math.floor(props.color.B * 255)
		return string.format("#%02X%02X%02X", r, g, b)
	end, { props.color })

	local colorHexWithAlpha: string? = React.useMemo(function(): string?
		if not props.alpha then
			return nil
		end
		local r = math.floor(props.color.R * 255)
		local g = math.floor(props.color.G * 255)
		local b = math.floor(props.color.B * 255)
		local a = math.floor(props.alpha * 255)
		return string.format("#%02X%02X%02X%02X", r, g, b, a)
	end, { props.color.R, props.color.G, props.color.B, props.alpha :: number })

	local rgbText = React.useMemo(function()
		return string.format(
			"RGB(%d, %d, %d)",
			math.floor(props.color.R * 255),
			math.floor(props.color.G * 255),
			math.floor(props.color.B * 255)
		)
	end, { props.color })

	local rgbaText: string? = React.useMemo(function(): string?
		if not props.alpha then
			return nil
		end
		return string.format(
			"RGBA(%d, %d, %d, %.2f)",
			math.floor(props.color.R * 255),
			math.floor(props.color.G * 255),
			math.floor(props.color.B * 255),
			props.alpha
		)
	end, { props.color.R, props.color.G, props.color.B, props.alpha :: number })

	local swatchTransparency = if props.alpha then (1 - props.alpha) else 0

	return React.createElement(View, {
		tag = "row gap-medium auto-y size-full-0",
		LayoutOrder = props.LayoutOrder,
	}, {
		ColorSwatch = React.createElement(View, {
			Size = UDim2.fromOffset(64, 64),
			backgroundStyle = {
				Color3 = props.color,
				Transparency = swatchTransparency,
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

			HexAlphaLabel = if colorHexWithAlpha and props.showAlpha
				then React.createElement(Text, {
					Text = colorHexWithAlpha :: string,
					fontStyle = tokens.Typography.CaptionLarge,
					textStyle = tokens.Color.Content.Default,
					TextXAlignment = Enum.TextXAlignment.Left,
					tag = "auto-y size-full-0",
				})
				else React.createElement(React.Fragment),

			RGBLabel = React.createElement(Text, {
				Text = rgbText,
				fontStyle = tokens.Typography.CaptionLarge,
				textStyle = tokens.Color.Content.Default,
				TextXAlignment = Enum.TextXAlignment.Left,
				tag = "auto-y size-full-0",
			}),

			RGBALabel = if rgbaText and props.showAlpha
				then React.createElement(Text, {
					Text = rgbaText :: string,
					fontStyle = tokens.Typography.CaptionLarge,
					textStyle = tokens.Color.Content.Default,
					TextXAlignment = Enum.TextXAlignment.Left,
					tag = "auto-y size-full-0",
				})
				else React.createElement(React.Fragment),
		}),
	})
end

return {
	summary = "ColorPicker",
	stories = {
		{
			name = "Base",
			story = function(_props)
				local tokens = useTokens()
				local selectedColor, setSelectedColor = React.useState(tokens.Color.Extended.Blue.Blue_1100.Color3)
				local selectedAlpha, setSelectedAlpha = React.useState(1)

				return React.createElement(View, {
					Size = UDim2.fromOffset(300, 300),
					tag = "col gap-medium",
				}, {
					PreviewContainer = React.createElement(ColorPreview, {
						color = selectedColor,
						alpha = selectedAlpha,
						showAlpha = true,
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

				return React.createElement(View, {
					Size = UDim2.fromOffset(300, 300),
					tag = "col gap-medium",
				}, {
					PreviewContainer = React.createElement(ColorPreview, {
						color = selectedColor,
						showAlpha = false,
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
			name = "BrickColor Only",
			story = function(_props)
				local selectedColor, setSelectedColor = React.useState(BrickColor.new("Bright red").Color)

				local availableModes = { ColorInputMode.Brick }

				return React.createElement(View, {
					Size = UDim2.fromOffset(300, 300),
					tag = "col gap-medium",
				}, {
					PreviewContainer = React.createElement(ColorPreview, {
						color = selectedColor,
						showAlpha = false,
					}),

					Picker = React.createElement(ColorPicker, {
						initialColor = selectedColor,
						availableModes = availableModes,
						initialMode = ColorInputMode.Brick,
						onColorChanged = function(newColor: Color3, _brickColor: BrickColor?)
							setSelectedColor(newColor)
						end,
					}),
				})
			end,
		},
	},
	controls = {},
}
