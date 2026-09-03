local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

export type PlannedSubPartProps = {
	name: string,
}

--[[
	Placeholder for compound sub-part storybooks where documentation is not ready yet.
	Renders no real component surface, only a status message.
]]
local function PlannedSubPart(props: PlannedSubPartProps)
	return React.createElement(View, {
		tag = "col align-x-center align-y-center gap-small size-full auto-xy padding-large",
	}, {
		Title = React.createElement(Text, {
			Text = props.name,
			tag = "auto-xy text-title-medium text-align-x-center content-emphasis",
			LayoutOrder = 1,
		}),
		Message = React.createElement(Text, {
			Text = "Documentation in progress — check back soon.",
			tag = "size-full-0 auto-y text-body-medium text-wrap text-align-x-center content-muted",
			LayoutOrder = 2,
		}),
	})
end

return PlannedSubPart
