local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local View = require(Foundation.Components.View)
local CloseAffordance = require(Foundation.Components.CloseAffordance)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
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
				local isInverse = controls.isInverse
				local contextValue = { isInverse = isInverse }
				local tokens = useTokens()

				return React.createElement(View, {
					tag = {
						["row gap-medium auto-xy size-0-0 align-y-center padding-medium radius-medium"] = true,
						["bg-system-contrast"] = variant == CloseAffordanceVariant.Utility and isInverse,
					},
					backgroundStyle = if variant == CloseAffordanceVariant.OverMedia
						then tokens.Color.Extended.White.White_100
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
										local contextName = if isInverse then "Inverse" else "Normal"
										print(`{contextName} {variant} CloseAffordance ({size}) activated`)
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
		isInverse = false,
	},
}
