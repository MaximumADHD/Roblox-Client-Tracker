local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ColorMode = require(Foundation.Enums.ColorMode)
local Flags = require(Foundation.Utility.Flags)
local InputSize = require(Foundation.Enums.InputSize)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
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

local stories = Dash.map(BUTTON_VARIANTS, function(variant)
	return {
		name = variant,
		story = function(props)
			local controls = props.controls
			local colorMode = controls.colorMode
			local contextValue = { colorMode = colorMode }
			local tokens = useTokens()
			Flags.FoundationUsePath2DSpinner = controls.usePath2DSpinner

			return React.createElement(View, {
				tag = "row gap-medium auto-xy size-0 align-y-center padding-medium radius-medium",
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
				Buttons = React.createElement(
					PresentationContext.Provider,
					{ value = contextValue },
					Dash.map(
						{ InputSize.Large, InputSize.Medium, InputSize.Small, InputSize.XSmall } :: { InputSize },
						function(size)
							return React.createElement(Button, {
								icon = if controls.icon == "" then nil else props.controls.icon,
								text = controls.text,
								variant = variant,
								isLoading = controls.isLoading,
								onActivated = function()
									print(`{colorMode} {variant} Button ({size}) activated`)
								end,
								isDisabled = controls.isDisabled,
								size = size,
								fillBehavior = if controls.fillBehavior == React.None
									then nil
									else controls.fillBehavior,
								inputDelay = controls.inputDelay,
							})
						end
					)
				),
			})
		end,
	}
end)

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
			One = React.createElement(Button, {
				text = controls.text,
				variant = ButtonVariant.Emphasis,
				onActivated = function()
					print(`{colorMode} Button row {selectedBehavior} activated`)
				end,
				isDisabled = controls.isDisabled,
				size = InputSize.Medium,
				fillBehavior = selectedBehavior,
				icon = if controls.icon == "" then nil else controls.icon,
			}),
			Two = React.createElement(Button, {
				text = controls.text,
				variant = ButtonVariant.Emphasis,
				onActivated = function()
					print(`{colorMode} Button row {selectedBehavior} activated`)
				end,
				isDisabled = controls.isDisabled,
				size = InputSize.Medium,
				fillBehavior = selectedBehavior,
				icon = if controls.icon == "" then nil else controls.icon,
			}),
			Three = React.createElement(Button, {
				text = controls.text,
				variant = ButtonVariant.Emphasis,
				onActivated = function()
					print(`{colorMode} Button row {selectedBehavior} activated`)
				end,
				isDisabled = controls.isDisabled,
				size = InputSize.Medium,
				fillBehavior = selectedBehavior,
				icon = if controls.icon == "" then nil else controls.icon,
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
