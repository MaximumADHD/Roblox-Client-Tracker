local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local RadioGroup = require(Foundation.Components.RadioGroup)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local InputPlacement = require(Foundation.Enums.InputPlacement)
type InputPlacement = InputPlacement.InputPlacement
local InputSize = require(Foundation.Enums.InputSize)

type InputGroupSize = Types.InputGroupSize

local Section = StorySection.Section
local LabeledCell = StorySection.LabeledCell
local STORY_FRAME_TAG = StorySection.STORY_FRAME_TAG
local STORY_PAGE_TAG = StorySection.STORY_PAGE_TAG

local SIZE_ORDER: { InputGroupSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
}

local PLACEMENT_ORDER: { InputPlacement } = {
	InputPlacement.Start,
	InputPlacement.End,
}

local LEGEND = "Legend"
local LONG_LEGEND = "This is a longer group legend than the container fits on a single line"
local ITEM_LABELS = { "Item 1", "Item 2", "Item 3" }
local ITEM_VALUES = { "A", "B", "C" }
local LONG_ITEM_LABELS = {
	"This is a longer item label than the container fits on a single line",
	"A second item label that also runs past the width it is given",
	"A third item label that also runs past the width it is given",
}
local BOUNDED_WIDTH = 250

local function noop(_value: string) end

local function createItems(labels: { string }?): { React.ReactNode }
	return Dash.map(ITEM_VALUES, function(value, index)
		return React.createElement(RadioGroup.Item, {
			value = value,
			label = if labels then labels[index] else ITEM_LABELS[index],
			LayoutOrder = index,
		})
	end)
end

local function StaticGroup(props: {
	LayoutOrder: number?,
	legend: string?,
	size: InputGroupSize?,
	placement: InputPlacement?,
	labels: { string }?,
}): React.ReactNode
	local remountKey, setRemountKey = React.useState(0)

	return React.createElement(RadioGroup.Root, {
		key = tostring(remountKey),
		legend = props.legend,
		size = props.size,
		placement = props.placement,
		LayoutOrder = props.LayoutOrder,
		onValueChanged = function()
			setRemountKey(function(key)
				return key + 1
			end)
		end,
	}, createItems(props.labels))
end

type PlaygroundControls = {
	legend: string?,
	size: InputGroupSize?,
	placement: InputPlacement?,
}

local function PlaygroundStory(props: { controls: PlaygroundControls })
	local controls = props.controls

	return React.createElement(View, {
		tag = `auto-xy {STORY_FRAME_TAG}`,
	}, {
		Group = React.createElement(RadioGroup.Root, {
			legend = controls.legend,
			size = controls.size,
			placement = controls.placement,
			onValueChanged = noop,
		}, createItems()),
	})
end

local function SizingStory()
	return React.createElement(View, {
		tag = `col {STORY_PAGE_TAG}`,
	}, {
		Size = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Size",
			},
			Dash.map(SIZE_ORDER, function(size, index)
				return React.createElement(LabeledCell, {
					LayoutOrder = index,
					label = size,
				}, {
					Group = React.createElement(StaticGroup, {
						legend = LEGEND,
						size = size,
					}),
				})
			end)
		),
	})
end

local function PlacementStory()
	return React.createElement(
		View,
		{
			tag = `row wrap gap-large auto-xy {STORY_FRAME_TAG}`,
		},
		Dash.map(PLACEMENT_ORDER, function(placement, index)
			return React.createElement(LabeledCell, {
				LayoutOrder = index,
				label = placement,
			}, {
				Group = React.createElement(StaticGroup, {
					legend = LEGEND,
					placement = placement,
				}),
			})
		end)
	)
end

local function ControlledExample(props: {
	LayoutOrder: number,
})
	local value, setValue = React.useState(nil :: string?)

	return React.createElement(RadioGroup.Root, {
		legend = LEGEND,
		value = value,
		onValueChanged = setValue,
		LayoutOrder = props.LayoutOrder,
	}, createItems())
end

local function ControlledStory()
	return React.createElement(View, {
		tag = `auto-xy {STORY_FRAME_TAG}`,
	}, {
		Example = React.createElement(ControlledExample, { LayoutOrder = 1 }),
	})
end

local function ContentStory()
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Wrapping = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Wrapping",
		}, {
			Bounded = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = `parent width = {BOUNDED_WIDTH}`,
			}, {
				Frame = React.createElement(View, {
					tag = "auto-y",
					Size = UDim2.fromOffset(BOUNDED_WIDTH, 0),
				}, {
					Group = React.createElement(StaticGroup, {
						legend = LONG_LEGEND,
						labels = LONG_ITEM_LABELS,
					}),
				}),
			}),
		}),
	})
end

type StoryEntry = {
	name: string,
	story: unknown,
}

local stories: { StoryEntry } = {
	{
		name = "Playground",
		story = PlaygroundStory :: unknown,
	},
	{
		name = "Controlled component",
		story = ControlledStory,
	},
	{
		name = "Content",
		story = ContentStory,
	},
}

if Flags.FoundationInputGroup then
	table.insert(stories, 2, {
		name = "Sizing",
		story = SizingStory,
	})
	table.insert(stories, 3, {
		name = "Placement",
		story = PlacementStory,
	})
end

local controls: { [string]: unknown } = if Flags.FoundationInputGroup
	then {
		legend = LEGEND,
		size = SIZE_ORDER,
		placement = PLACEMENT_ORDER,
	}
	else {}

return {
	summary = "RadioGroup lets a caller pick one value from a set of items, and publishes legend, size, and placement to them.",
	stories = stories,
	controls = controls,
}
