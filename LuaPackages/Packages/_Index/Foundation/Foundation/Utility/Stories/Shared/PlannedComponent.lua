local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

type PlannedComponentProps = {
	name: string,
}

--[[
	Placeholder rendered in the Planned storybook for components that are
	designed in Figma but not implemented in Foundation yet. It intentionally
	renders no real component surface, only a message describing the status.
]]
local function PlannedComponent(props: PlannedComponentProps)
	return React.createElement(View, {
		tag = "col align-x-center align-y-center gap-small size-full auto-xy padding-large",
	}, {
		Title = React.createElement(Text, {
			Text = props.name,
			tag = "auto-xy text-title-medium text-align-x-center content-emphasis",
			LayoutOrder = 1,
		}),
		Message = React.createElement(Text, {
			Text = "Designed in Figma — not implemented in Foundation yet.",
			tag = "size-full-0 auto-y text-body-medium text-wrap text-align-x-center content-muted",
			LayoutOrder = 2,
		}),
	})
end

return PlannedComponent
