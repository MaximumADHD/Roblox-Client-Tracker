local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Toggle = require(Foundation.Components.Toggle)
local ToggleGroup = require(Foundation.Components.ToggleGroup)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local Section = StorySection.Section
local LabeledCell = StorySection.LabeledCell

local InputPlacement = require(Foundation.Enums.InputPlacement)
type InputPlacement = InputPlacement.InputPlacement
local InputSize = require(Foundation.Enums.InputSize)

type InputGroupSize = Types.InputGroupSize

local STORY_FRAME_TAG = "padding-y-large bg-surface-0"

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

type ItemFixture = {
	label: string,
	hint: string?,
}

local ITEM_FIXTURES: { ItemFixture } = {
	{ label = "Item 1" },
	{ label = "Item 2" },
	{ label = "Item 3" },
}

local LONG_HINT = "A longer hint that also runs past the width its container gives it"

local WRAPPING_ITEM_FIXTURES: { ItemFixture } = {
	{
		label = "This is a longer item label than the container fits on a single line",
		hint = LONG_HINT,
	},
	{
		label = "A second item label that also runs past the width it is given",
	},
}

local BOUNDED_WIDTH = 250

local function noop(_value: boolean) end

local function createItems(fixtures: { ItemFixture }): { React.ReactNode }
	return Dash.map(fixtures, function(fixture, index)
		return React.createElement(Toggle, {
			label = fixture.label,
			hint = fixture.hint,
			isChecked = false,
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
		Group = React.createElement(ToggleGroup, {
			legend = controls.legend,
			size = controls.size,
			placement = controls.placement,
		}, createItems(ITEM_FIXTURES)),
	})
end

local function SizingStory()
	return React.createElement(View, {
		tag = `col auto-xy {STORY_FRAME_TAG}`,
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
					Group = React.createElement(ToggleGroup, {
						legend = LEGEND,
						size = size,
					}, createItems(ITEM_FIXTURES)),
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
				Group = React.createElement(ToggleGroup, {
					legend = LEGEND,
					placement = placement,
				}, createItems(ITEM_FIXTURES)),
			})
		end)
	)
end

local function ContentStory()
	return React.createElement(View, {
		tag = `col gap-xxlarge auto-xy {STORY_FRAME_TAG}`,
	}, {
		Wrapping = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Wrapping",
			contentTag = "row gap-xxlarge align-y-top auto-xy wrap",
		}, {
			Bounded = React.createElement(LabeledCell, {
				LayoutOrder = 1,
				label = `parent width = {BOUNDED_WIDTH}`,
			}, {
				Frame = React.createElement(View, {
					tag = "auto-y",
					Size = UDim2.fromOffset(BOUNDED_WIDTH, 0),
				}, {
					Group = React.createElement(ToggleGroup, {
						legend = LONG_LEGEND,
					}, createItems(WRAPPING_ITEM_FIXTURES)),
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
		name = "Sizing",
		story = SizingStory,
	},
	{
		name = "Placement",
		story = PlacementStory,
	},
	{
		name = "Content",
		story = ContentStory,
	},
}

local controls: { [string]: unknown } = {
	legend = LEGEND,
	size = SIZE_ORDER,
	placement = PLACEMENT_ORDER,
}

return {
	summary = "ToggleGroup lays related toggles under a shared legend and publishes size and placement to them.",
	stories = stories,
	controls = controls,
}
