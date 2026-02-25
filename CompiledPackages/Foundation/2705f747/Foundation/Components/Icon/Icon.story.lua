local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
local View = require(Foundation.Components.View)

local function Story(props)
	local controls = props.controls

	local sizes: { IconSize.IconSize } = { IconSize.Large, IconSize.Medium, IconSize.Small, IconSize.XSmall }

	return React.createElement(
		View,
		{
			tag = "row gap-xxlarge auto-xy align-y-center",
		},
		Dash.map(sizes, function(size, index)
			return React.createElement(Icon, {
				name = controls.name,
				size = size,
				variant = controls.variant,
				LayoutOrder = index,
			})
		end)
	)
end

return {
	summary = "Icon component for displaying icons",
	story = Story,
	controls = {
		name = Dash.values(BuilderIcons.Icon),
		variant = Dash.values(BuilderIcons.IconVariant),
	},
}
