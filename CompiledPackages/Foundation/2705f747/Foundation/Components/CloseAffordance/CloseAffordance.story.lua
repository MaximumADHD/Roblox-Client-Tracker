local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local CloseAffordance = require(Foundation.Components.CloseAffordance)
local ColorMode = require(Foundation.Enums.ColorMode)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
type CloseAffordanceVariant = CloseAffordanceVariant.CloseAffordanceVariant

return {
	summary = "CloseAffordance",
	stories = Dash.map(CloseAffordanceVariant, function(variant)
		return {
			name = variant,
			story = function(props)
				local controls = props.controls
				local colorMode = controls.colorMode
				local contextValue = { colorMode = colorMode }
				local tokens = useTokens()

				return React.createElement(View, {
					tag = "row gap-medium auto-xy size-0-0 align-y-center padding-medium radius-medium",
					backgroundStyle = if variant == CloseAffordanceVariant.OverMedia
						then tokens.Color.Extended.White.White_100
						elseif colorMode then tokens[colorMode].Surface.Surface_100
						else nil,
				}, {
					Gradient = if variant == CloseAffordanceVariant.OverMedia
						then React.createElement("UIGradient", {
							Color = ColorSequence.new({
								ColorSequenceKeypoint.new(0, tokens.Color.Extended.Green.Green_500.Color3),
								ColorSequenceKeypoint.new(1, tokens.Color.Extended.Blue.Blue_500.Color3),
							}),
						})
						else nil,
					Inputs = React.createElement(
						PresentationContext.Provider,
						{ value = contextValue },
						Dash.map(
							{ InputSize.Medium, InputSize.Small, InputSize.XSmall } :: { InputSize },
							function(size)
								return React.createElement(CloseAffordance, {
									onActivated = function()
										print(`{colorMode} {variant} Button ({size}) activated`)
									end,
									isDisabled = controls.isDisabled,
									size = size,
									variant = variant,
								})
							end
						)
					),
				})
			end,
		}
	end),
	controls = {
		isDisabled = false,
		colorMode = Dash.values(ColorMode),
	},
}
