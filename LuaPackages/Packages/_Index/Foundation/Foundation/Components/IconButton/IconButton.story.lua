local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)
local BuilderIcons = require(Packages.BuilderIcons)

local View = require(Foundation.Components.View)
local IconButton = require(Foundation.Components.IconButton)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

local Flags = require(Foundation.Utility.Flags)

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
				Flags.FoundationUpdateIconButtonSizes = controls.updateIconButtonSizes

				return React.createElement(
					View,
					{ tag = "row gap-medium auto-y size-full-0 align-y-center" },
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
									print(`{variant} IconButton ({size}) activated`)
								end,
								isDisabled = controls.isDisabled,
								size = size,
								isCircular = controls.isCircular,
							})
						end
					)
				)
			end,
		}
	end),
	controls = {
		name = Dash.values(BuilderIcons.Icon),
		variant = Dash.values(BuilderIcons.IconVariant),
		isDisabled = false,
		isCircular = false,
		updateIconButtonSizes = Flags.FoundationUpdateIconButtonSizes,
	},
}
