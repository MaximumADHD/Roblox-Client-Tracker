local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ColorMode = require(Foundation.Enums.ColorMode)
local Flags = require(Foundation.Utility.Flags)
local InputSize = require(Foundation.Enums.InputSize)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
type InputSize = InputSize.InputSize
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant
local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

local BUTTON_VARIANTS: { ButtonVariant } = {
	ButtonVariant.Standard,
	ButtonVariant.Emphasis,
	ButtonVariant.SoftEmphasis,
	ButtonVariant.Utility,
	ButtonVariant.Link,
	ButtonVariant.Alert,
}

local function PlaygroundStory(props)
	local controls = props.controls
	local colorMode = controls.colorMode
	local tokens = useTokens()
	Flags.FoundationUsePath2DSpinner = controls.usePath2DSpinner

	local button = React.createElement(Button, {
		icon = if controls.icon == "" then nil else controls.icon,
		text = controls.text,
		variant = controls.variant,
		isLoading = controls.isLoading,
		isDisabled = controls.isDisabled,
		size = controls.size,
		fillBehavior = if controls.fillBehavior == React.None then nil else controls.fillBehavior,
		inputDelay = controls.inputDelay,
		onActivated = function()
			print(`{colorMode} {controls.variant} Button activated`)
		end,
	})

	return React.createElement(View, {
		tag = "row align-y-center gap-medium size-0 auto-xy padding-medium radius-medium",
		backgroundStyle = if colorMode then tokens[colorMode].Surface.Surface_100 else nil,
	}, React.createElement(PresentationContext.Provider, { value = { colorMode = colorMode } }, button))
end

local stories = Dash.map(BUTTON_VARIANTS, function(variant)
	return {
		name = variant,
		story = function()
			local tokens = useTokens()

			return React.createElement(View, {
				tag = "row align-y-center gap-medium size-0 auto-xy padding-medium radius-medium",
				backgroundStyle = if variant == ButtonVariant.OverMedia
					then tokens.Color.Extended.White.White_100
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
				Buttons = React.createElement(
					PresentationContext.Provider,
					{ value = { isIconSize = false, colorMode = ColorMode.Color } },
					Dash.map(
						{ InputSize.Large, InputSize.Medium, InputSize.Small, InputSize.XSmall } :: { InputSize },
						function(size)
							return React.createElement(Button, {
								icon = BuilderIcons.Icon.PlaySmall,
								text = "Lorem ipsum",
								variant = variant,
								onActivated = function()
									print(`{variant} Button ({size}) activated`)
								end,
								size = size,
							})
						end
					)
				),
			})
		end,
	}
end)

table.insert(stories, 1, {
	name = "Playground",
	story = PlaygroundStory :: unknown,
})

table.insert(stories, {
	name = "Width",
	summary = "Width, fillBehavior, and precedence. Default uses AutomaticSize.X. Width (scale or offset) overrides. fillBehavior.Fill takes precedence over width.",
	story = function()
		return React.createElement(View, {
			tag = "col gap-large size-full-0 auto-xy padding-large radius-medium",
		}, {
			Default = React.createElement(View, {
				LayoutOrder = 1,
				tag = "col gap-xxsmall auto-xy",
			}, {
				Label = React.createElement(Text, {
					Text = "Default (AutomaticSize.X)",
					tag = "auto-xy text-body-small",
					LayoutOrder = 1,
				}),
				Row = React.createElement(View, {
					tag = "row gap-medium auto-xy",
					LayoutOrder = 2,
				}, {
					React.createElement(Button, {
						text = "Auto",
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
					React.createElement(Button, {
						text = "200px",
						variant = ButtonVariant.Emphasis,
						onActivated = function() end,
						size = InputSize.Medium,
						width = UDim.new(0, 200),
					}),
				}),
			}),
			FillBehaviorTakesPrecedence = React.createElement(View, {
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
					React.createElement(Button, {
						text = "Fill wins",
						variant = ButtonVariant.Emphasis,
						onActivated = function() end,
						size = InputSize.Medium,
						width = UDim.new(0, 200),
						fillBehavior = FillBehavior.Fill,
					}),
				}),
			}),
		})
	end,
})

table.insert(stories, {
	name = "FillBehavior",
	summary = "The same button rendered with each fillBehavior",
	story = function()
		return React.createElement(View, {
			tag = "row gap-medium size-full-0 auto-y padding-medium radius-medium",
		}, {
			None = React.createElement(Button, {
				text = "Default",
				variant = ButtonVariant.Emphasis,
				onActivated = function() end,
				size = InputSize.Medium,
				LayoutOrder = 1,
			}),
			Fit = React.createElement(Button, {
				text = "Fit",
				variant = ButtonVariant.Emphasis,
				onActivated = function() end,
				size = InputSize.Medium,
				fillBehavior = FillBehavior.Fit,
				LayoutOrder = 2,
			}),
			Fill = React.createElement(Button, {
				text = "Fill",
				variant = ButtonVariant.Emphasis,
				onActivated = function() end,
				size = InputSize.Medium,
				fillBehavior = FillBehavior.Fill,
				LayoutOrder = 3,
			}),
		})
	end,
})

return {
	summary = "Button",
	stories = stories,
	controls = {
		icon = {
			"play-small",
			"play-large",
			"play-xlarge",
			"robux",
			"heart",
			"glasses",
			"",
		},
		text = "Lorem ipsum",
		variant = BUTTON_VARIANTS,
		size = { InputSize.Large, InputSize.Medium, InputSize.Small, InputSize.XSmall } :: { InputSize },
		isDisabled = false,
		isLoading = false,
		colorMode = Dash.values(ColorMode),
		fillBehavior = {
			React.None,
			FillBehavior.Fit,
			FillBehavior.Fill,
		} :: { FillBehavior },
		inputDelay = 0,
		usePath2DSpinner = Flags.FoundationUsePath2DSpinner,
	},
}
