local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local ColorMode = require(Foundation.Enums.ColorMode)
local FillBehavior = require(Foundation.Enums.FillBehavior)
local IconButton = require(Foundation.Components.IconButton)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
type FillBehavior = FillBehavior.FillBehavior

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

-- Only show the supported variants for IconButton
local SUPPORTED_VARIANTS: { ButtonVariant } = {
	ButtonVariant.Utility,
	ButtonVariant.Standard,
	ButtonVariant.Emphasis,
	ButtonVariant.OverMedia,
	ButtonVariant.Alert,
}

local stories = Dash.map(SUPPORTED_VARIANTS, function(variant)
	return {
		name = variant,
		story = function(props)
			local controls = props.controls
			local colorMode = controls.colorMode
			local contextValue = { colorMode = colorMode }
			local tokens = useTokens()

			return React.createElement(View, {
				tag = "row align-y-center gap-medium size-0 auto-xy padding-medium radius-medium",
				backgroundStyle = if variant == ButtonVariant.OverMedia
					then tokens.Color.Extended.White.White_100
					elseif colorMode then tokens[colorMode].Surface.Surface_100
					else nil,
			}, {
				Gradient = if variant == ButtonVariant.OverMedia
					then React.createElement("UIGradient", {
						Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0, tokens.Color.Extended.Green.Green_500.Color3),
							ColorSequenceKeypoint.new(1, tokens.Color.Extended.Blue.Blue_500.Color3),
						}),
					})
					else nil,
				IconButtons = React.createElement(
					PresentationContext.Provider,
					{ value = contextValue },
					Dash.map(
						{ InputSize.Large, InputSize.Medium, InputSize.Small, InputSize.XSmall } :: { InputSize },
						function(size)
							return React.createElement(IconButton, {
								icon = {
									name = props.controls.name,
									variant = props.controls.variant,
								},
								variant = variant,
								onActivated = function()
									print(`{colorMode} {variant} IconButton ({size}) activated`)
								end,
								isDisabled = controls.isDisabled,
								size = size,
								isCircular = controls.isCircular,
							})
						end
					)
				),
			})
		end,
	}
end)

table.insert(stories, {
	name = "Width",
	summary = "Width, fillBehavior, and precedence. Default uses the fixed square size from the variant system. Width (scale or offset) overrides. fillBehavior.Fill takes precedence over width.",
	story = function(props)
		local controls = props.controls
		local colorMode = controls.colorMode
		local tokens = useTokens()

		local children = {
			Default = React.createElement(View, {
				LayoutOrder = 1,
				tag = "col gap-xxsmall auto-xy",
			}, {
				Label = React.createElement(Text, {
					Text = "Default (fixed square)",
					tag = "auto-xy text-body-small",
					LayoutOrder = 1,
				}),
				Row = React.createElement(View, {
					tag = "row gap-medium auto-xy",
					LayoutOrder = 2,
				}, {
					React.createElement(IconButton, {
						icon = { name = controls.name, variant = controls.variant },
						variant = ButtonVariant.Emphasis,
						onActivated = function() end,
						size = InputSize.Medium,
					}),
				}),
			}),
			FixedWidth = React.createElement(View, {
				LayoutOrder = 2,
				tag = "col gap-xxsmall auto-xy",
			}, {
				Label = React.createElement(Text, {
					Text = "Fixed width (0, 200px)",
					tag = "auto-xy text-body-small",
					LayoutOrder = 1,
				}),
				Row = React.createElement(View, {
					tag = "row gap-medium auto-xy",
					LayoutOrder = 2,
				}, {
					React.createElement(IconButton, {
						icon = { name = controls.name, variant = controls.variant },
						variant = ButtonVariant.Emphasis,
						onActivated = function() end,
						size = InputSize.Medium,
						width = UDim.new(0, 200),
					}),
				}),
			}),
		}
		children.FillBehaviorTakesPrecedence = React.createElement(View, {
			LayoutOrder = 4,
			tag = "col gap-xxsmall auto-xy",
		}, {
			Label = React.createElement(Text, {
				Text = "fillBehavior.Fill takes precedence over width=200px",
				tag = "auto-xy text-body-small",
				LayoutOrder = 1,
			}),
			Row = React.createElement(View, {
				tag = "row size-full-0 auto-xy",
				LayoutOrder = 2,
				Size = UDim2.new(1, 0, 0, 60),
			}, {
				React.createElement(IconButton, {
					icon = { name = controls.name, variant = controls.variant },
					variant = ButtonVariant.Emphasis,
					onActivated = function() end,
					size = InputSize.Medium,
					width = UDim.new(0, 200),
					fillBehavior = FillBehavior.Fill,
				}),
			}),
		})

		return React.createElement(View, {
			tag = "col gap-large size-full-0 auto-xy padding-large radius-medium",
			backgroundStyle = if colorMode then tokens[colorMode].Surface.Surface_100 else nil,
		}, children)
	end,
})
table.insert(stories, {
	name = "FillBehavior",
	story = function(props)
		local controls = props.controls
		local colorMode = controls.colorMode
		local tokens = useTokens()
		local selectedBehavior = if controls.fillBehavior == React.None then nil else controls.fillBehavior

		return React.createElement(View, {
			tag = "row gap-medium size-full-0 auto-y padding-medium radius-medium",
			backgroundStyle = if colorMode then tokens[colorMode].Surface.Surface_100 else nil,
		}, {
			One = React.createElement(IconButton, {
				icon = {
					name = controls.name,
					variant = controls.variant,
				},
				variant = ButtonVariant.Emphasis,
				onActivated = function()
					print(`{colorMode} IconButton row {selectedBehavior} activated`)
				end,
				isDisabled = controls.isDisabled,
				size = InputSize.Medium,
				isCircular = controls.isCircular,
				fillBehavior = selectedBehavior,
			}),
			Two = React.createElement(IconButton, {
				icon = {
					name = controls.name,
					variant = controls.variant,
				},
				variant = ButtonVariant.Utility,
				onActivated = function()
					print(`{colorMode} IconButton row {selectedBehavior} activated`)
				end,
				isDisabled = controls.isDisabled,
				size = InputSize.Medium,
				isCircular = controls.isCircular,
				fillBehavior = selectedBehavior,
			}),
			Three = React.createElement(IconButton, {
				icon = {
					name = controls.name,
					variant = controls.variant,
				},
				variant = ButtonVariant.Utility,
				onActivated = function()
					print(`{colorMode} IconButton row {selectedBehavior} activated`)
				end,
				isDisabled = controls.isDisabled,
				size = InputSize.Medium,
				isCircular = controls.isCircular,
				fillBehavior = selectedBehavior,
			}),
		})
	end,
})

return {
	summary = "IconButton",
	stories = stories,
	controls = {
		name = {
			"play-small",
			"play-large",
			"play-xlarge",
			"robux",
			"heart",
			"glasses",
		},
		variant = Dash.values(BuilderIcons.IconVariant),
		isDisabled = false,
		isCircular = false,
		colorMode = Dash.values(ColorMode),
		fillBehavior = {
			React.None,
			FillBehavior.Fit,
			FillBehavior.Fill,
		} :: { FillBehavior },
	},
}
