local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

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
	local tabsValue, setTabsValue = React.useState(segments[1].id)

	return React.createElement(View, {
		tag = "col auto-xy gap-small",
	}, {
		TextSegments = React.createElement(SegmentedControl, {
			size = props.controls.size,
			isCircular = props.controls.isCircular,
			segments = segments,
			value = value,
			onActivated = setValue,
			LayoutOrder = 1,
		}),
		IconSegments = React.createElement(SegmentedControl, {
			size = props.controls.size,
			isCircular = props.controls.isCircular,
			segments = iconSegments,
			value = iconValue,
			onActivated = setIconValue,
			LayoutOrder = 2,
		}),
		MixedSegments = React.createElement(SegmentedControl, {
			size = props.controls.size,
			isCircular = props.controls.isCircular,
			segments = mixedSegments,
			value = mixedValue,
			onActivated = setMixedValue,
			LayoutOrder = 3,
		}),
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
				isCircular = props.controls.isCircular,
				segments = segments,
				value = tabsValue,
				onActivated = setTabsValue,
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
	stories = {
		{
			name = "Playground",
			story = Story,
		},
	},
	controls = {
		size = Dash.values(InputSize),
		isCircular = false,
	},
}
