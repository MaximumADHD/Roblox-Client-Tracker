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
local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

return {
	summary = "Button",
	stories = Dash.map(ButtonVariant, function(variant)
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
	end),
	controls = {
		icon = {
			"arrow-up-right-from-square",
			"chain-link",
			"tilt",
			"icons/placeholder/placeholderOn",
			"icons/common/robux",
			"icons/common/play",
			"icons/controls/media-play-large",
			"icons/controls/media-play-medium",
			"icons/controls/media-play-small",
			"icons/actions/pumpkin_medium",
			"icons/actions/accept_small",
			"icons/actions/friends/friendAdd",
			"icons/actions/friends/friendAdd_small",
			"icons/navigation/externallink_medium",
			"icons/actions/info",
			"icons/actions/info_small",
			"component_assets/hexagon_24",
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
