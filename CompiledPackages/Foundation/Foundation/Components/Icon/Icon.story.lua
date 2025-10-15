local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)

local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)

local function Story(props)
	local controls = props.controls

	return React.createElement(Icon, {
		name = controls.name,
		size = controls.size,
		variant = controls.variant,
	})
end

return {
	summary = "Icon component for displaying icons",
	story = Story,
	controls = {
		name = Dash.values(BuilderIcons.Icon),
		variant = Dash.values(BuilderIcons.IconVariant),
		size = {
			IconSize.Large,
			IconSize.XSmall,
			IconSize.Small,
			IconSize.Medium,
		} :: { IconSize.IconSize },
	},
}
