local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Divider = require(Foundation.Components.Divider)
local DividerVariant = require(Foundation.Enums.DividerVariant)
local Orientation = require(Foundation.Enums.Orientation)

local function HorizontalStory()
	local children: { [string]: React.ReactNode } = {}
	local variants = Dash.values(DividerVariant)

	for index, variant in variants do
		children["Divider-" .. tostring(variant)] = React.createElement(Divider, {
			variant = variant,
			orientation = Orientation.Horizontal,
			LayoutOrder = index,
		})
	end

	return React.createElement(View, {
		tag = "size-full-2000 col gap-xxlarge align-y-center bg-surface-0 padding-large",
	}, children)
end

local function VerticalStory()
	return React.createElement(View, {
		tag = "size-full-2000 row align-x-center align-y-center bg-surface-0 padding-large gap-large",
	}, {
		Divider = React.createElement(Divider, {
			orientation = Orientation.Vertical,
		}),
	})
end

return {
	summary = "Divider",
	stories = {
		{
			name = "Horizontal",
			summary = "All variants (Default, Heavy, Inset, InsetLeft, InsetRight)",
			story = HorizontalStory,
		},
		{
			name = "Vertical",
			summary = "Vertical divider (variant not applicable)",
			story = VerticalStory,
		},
	},
}
