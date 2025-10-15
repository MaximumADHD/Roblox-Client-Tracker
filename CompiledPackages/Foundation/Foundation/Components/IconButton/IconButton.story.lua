local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)
local BuilderIcons = require(Packages.BuilderIcons)

local View = require(Foundation.Components.View)
local IconButton = require(Foundation.Components.IconButton)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local useTokens = require(Foundation.Providers.Style.useTokens)

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

return {
	summary = "IconButton",
	stories = Dash.map(SUPPORTED_VARIANTS, function(variant)
		return {
			name = variant,
			story = function(props)
				local controls = props.controls
				local isInverse = controls.isInverse
				local contextValue = { isInverse = isInverse }
				local tokens = useTokens()

				return React.createElement(View, {
					tag = "row gap-medium auto-xy size-0 align-y-center padding-medium radius-medium",
					backgroundStyle = if variant == ButtonVariant.OverMedia
						then tokens.Color.Extended.White.White_100
						elseif isInverse then tokens.Inverse.Surface.Surface_0
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
										local contextName = if isInverse then "Inverse" else "Normal"
										print(`{contextName} {variant} IconButton ({size}) activated`)
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
	end),
	controls = {
		name = Dash.values(BuilderIcons.Icon),
		variant = Dash.values(BuilderIcons.IconVariant),
		isDisabled = false,
		isCircular = false,
		isInverse = false,
	},
}
