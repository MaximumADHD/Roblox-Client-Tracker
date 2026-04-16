local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local InputSize = require(Foundation.Enums.InputSize)
local SegmentedControl = require(Foundation.Components.SegmentedControl)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local segments = {
	{
		id = "1",
		text = "Lorem Ipsum",
	},
	{
		id = "2",
		text = "Lorem Ipsum",
	},
	{
		id = "3",
		text = "Lorem Ipsum",
	},
	{
		id = "4",
		text = "Lorem Ipsum",
	},
	{
		id = "5",
		text = "Lorem Ipsum Long",
	},
}

local function Story(props)
	local value, setValue = React.useState(segments[1].id :: Types.ItemId)

	return React.createElement(View, {
		tag = "col auto-xy",
	}, {
		SegmentedControl = React.createElement(SegmentedControl, {
			size = props.controls.size,
			segments = segments,
			value = value,
			onActivated = setValue,
		}),
	})
end

return {
	summary = "SegmentedControl",
	story = Story,
	controls = {
		size = Dash.values(InputSize),
	},
}
