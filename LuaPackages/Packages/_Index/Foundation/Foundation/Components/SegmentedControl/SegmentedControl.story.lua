local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local InputSize = require(Foundation.Enums.InputSize)
local SegmentModule = require(Foundation.Components.SegmentedControl.Segment)
type Segment = SegmentModule.Segment
local SegmentedControl = require(Foundation.Components.SegmentedControl)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local function Story(props)
	local segments: { Segment } = {
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

	local iconSegments: { Segment } = {
		{
			id = "1",
			icon = { name = BuilderIcons.Icon.House },
		},
		{
			id = "2",
			icon = { name = BuilderIcons.Icon.Gear },
		},
		{
			id = "3",
			icon = { name = BuilderIcons.Icon.MagnifyingGlass },
		},
	}

	local mixedSegments: { Segment } = {
		{
			id = "1",
			icon = { name = BuilderIcons.Icon.House },
		},
		{
			id = "2",
			text = "Browse",
		},
		{
			id = "3",
			icon = { name = BuilderIcons.Icon.Gear },
		},
	}

	local value, setValue = React.useState(segments[1].id)
	local iconValue, setIconValue = React.useState(iconSegments[1].id)
	local mixedValue, setMixedValue = React.useState(mixedSegments[1].id)

	return React.createElement(View, {
		tag = "col auto-xy gap-small",
	}, {
		TextSegments = React.createElement(SegmentedControl, {
			size = props.controls.size,
			segments = segments,
			value = value,
			onActivated = setValue,
			LayoutOrder = 1,
		}),
		IconSegments = if Flags.FoundationSegmentedControlIconSupport
			then React.createElement(SegmentedControl, {
				size = props.controls.size,
				segments = iconSegments,
				value = iconValue,
				onActivated = setIconValue,
				LayoutOrder = 2,
			})
			else nil,
		MixedSegments = if Flags.FoundationSegmentedControlIconSupport
			then React.createElement(SegmentedControl, {
				size = props.controls.size,
				segments = mixedSegments,
				value = mixedValue,
				onActivated = setMixedValue,
				LayoutOrder = 3,
			})
			else nil,
		SegmentsAsChild = React.createElement(View, {
			tag = "col auto-y size-full-0",
		}, {
			First = React.createElement(Text, {
				LayoutOrder = 1,
				Text = "I go first!",
				Size = UDim2.fromOffset(50, 50),
			}),
			TabsComponent = React.createElement(SegmentedControl, {
				LayoutOrder = 2,
				size = props.controls.size,
				segments = segments,
				value = mixedValue,
				onActivated = setMixedValue,
			}),
			Last = React.createElement(Text, {
				LayoutOrder = 3,
				Text = "I go last!",
				Size = UDim2.fromOffset(50, 50),
			}),
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
