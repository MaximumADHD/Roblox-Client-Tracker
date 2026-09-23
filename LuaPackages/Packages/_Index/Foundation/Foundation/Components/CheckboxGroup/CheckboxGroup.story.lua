local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Checkbox = require(Foundation.Components.Checkbox)
local CheckboxGroup = require(Foundation.Components.CheckboxGroup)
local Flags = require(Foundation.Utility.Flags)
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
local ITEM_LABELS = { "Label", "Label", "Label" }

local BOUNDED_WIDTH = 250

local function noop() end

local function staticItems(): { React.ReactNode }
	return Dash.map(ITEM_LABELS, function(label, index)
		return React.createElement(Checkbox, {
			label = label,
			onActivated = noop,
			LayoutOrder = index,
		})
	end)
end

type PlaygroundControls = {
	legend: string,
	size: InputGroupSize,
	placement: InputPlacement?,
}

local function PlaygroundStory(props: { controls: PlaygroundControls })
	local controls = props.controls

	return React.createElement(View, {
		tag = `auto-xy {STORY_FRAME_TAG}`,
	}, {
		Group = React.createElement(CheckboxGroup, {
			legend = controls.legend,
			size = controls.size,
			placement = controls.placement,
		}, staticItems()),
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
					Group = React.createElement(CheckboxGroup, {
						legend = LEGEND,
						size = size,
					}, staticItems()),
				})
			end)
		),
	})
end

local function PlacementStory()
	return React.createElement(
		View,
		{
			tag = `row align-y-top gap-xxlarge auto-xy {STORY_FRAME_TAG}`,
		},
		Dash.map(PLACEMENT_ORDER, function(placement, index)
			return React.createElement(LabeledCell, {
				LayoutOrder = index,
				label = placement,
			}, {
				Group = React.createElement(CheckboxGroup, {
					legend = LEGEND,
					placement = placement,
				}, staticItems()),
			})
		end)
	)
end

local function ControlledExample(props: {
	LayoutOrder: number,
})
	local checked, setChecked = React.useState({ false, false, false })

	local function setAt(index: number)
		return function(value: boolean)
			setChecked(function(previous)
				local updated = table.clone(previous)
				updated[index] = value
				return updated
			end)
		end
	end

	return React.createElement(
		CheckboxGroup,
		{
			legend = LEGEND,
			LayoutOrder = props.LayoutOrder,
		},
		Dash.map(checked, function(isChecked, index)
			return React.createElement(Checkbox, {
				label = ITEM_LABELS[index],
				isChecked = isChecked,
				onActivated = setAt(index),
				LayoutOrder = index,
			})
		end)
	)
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
			contentTag = "auto-xy",
		}, {
			Frame = React.createElement(View, {
				tag = "auto-y",
				Size = UDim2.fromOffset(BOUNDED_WIDTH, 0),
				LayoutOrder = 1,
			}, {
				Group = React.createElement(CheckboxGroup, {
					legend = LONG_LEGEND,
				}, staticItems()),
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
		name = "Sizing",
		story = SizingStory,
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
	table.insert(stories, 3, {
		name = "Placement",
		story = PlacementStory,
	})
end

local controls: { [string]: unknown } = Dash.join({
	legend = LEGEND,
	size = SIZE_ORDER,
}, if Flags.FoundationInputGroup then { placement = PLACEMENT_ORDER } else {})

return {
	summary = "CheckboxGroup lays related checkboxes under a shared legend and publishes size and placement to them.",
	stories = stories,
	controls = controls,
}
