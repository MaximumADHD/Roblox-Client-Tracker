local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Divider = require(Foundation.Components.Divider)
local DividerVariant = require(Foundation.Enums.DividerVariant)
local Orientation = require(Foundation.Enums.Orientation)

local function Story(props)
	return React.createElement(View, {
		tag = "size-full-2000 col align-y-center bg-surface-0",
	}, {
		Divider = React.createElement(Divider, {
			variant = props.controls.variant,
			orientation = props.controls.orientation,
		}),
	})
end

return {
	summary = "Divider",
	story = Story,
	controls = {
		variant = Dash.values(DividerVariant),
		orientation = Dash.values(Orientation),
	},
}
