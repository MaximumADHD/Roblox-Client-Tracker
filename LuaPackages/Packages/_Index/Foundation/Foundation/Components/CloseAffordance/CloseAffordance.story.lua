local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local View = require(Foundation.Components.View)
local CloseAffordance = require(Foundation.Components.CloseAffordance)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
type CloseAffordanceVariant = CloseAffordanceVariant.CloseAffordanceVariant

local SUPPORTED_VARIANTS: { CloseAffordanceVariant } = {
	-- CloseAffordanceVariant.Utility,
	CloseAffordanceVariant.OverMedia,
}

return {
	summary = "CloseAffordance",
	stories = Dash.map(SUPPORTED_VARIANTS, function(variant)
		return {
			name = variant,
			story = function(props)
				local controls = props.controls

				return React.createElement(
					View,
					{ tag = "row gap-medium auto-y size-full-0 align-y-center" },
					Dash.map({ InputSize.Medium, InputSize.Small, InputSize.XSmall } :: { InputSize }, function(size)
						return React.createElement(CloseAffordance, {
							onActivated = function()
								print(`{variant} CloseAffordance ({size}) activated`)
							end,
							isDisabled = controls.isDisabled,
							size = size,
							variant = CloseAffordanceVariant.OverMedia,
						})
					end)
				)
			end,
		}
	end),
	controls = {
		isDisabled = false,
	},
}
