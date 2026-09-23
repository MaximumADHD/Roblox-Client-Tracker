local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local Text = require(Foundation.Components.Text)
local Toggle = require(Foundation.Components.Toggle)
local ToggleGroup = require(Foundation.Components.ToggleGroup)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

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

local function Section(props: {
	LayoutOrder: number,
	name: string,
	note: string?,
	contentTag: string?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.name,
			tag = "auto-xy text-label-medium content-default",
			LayoutOrder = 1,
		}),
		Note = if props.note
			then React.createElement(Text, {
				Text = props.note,
				tag = "auto-xy text-body-small content-muted",
				LayoutOrder = 2,
			})
			else nil,
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-xxlarge align-y-top auto-xy wrap",
			LayoutOrder = 3,
		}, props.children),
	})
end

local function LabeledCell(props: {
	LayoutOrder: number,
	label: string,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col align-x-left gap-small auto-xy",
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = React.createElement(Text, {
			Text = props.label,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = "auto-xy",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function createItems(fixtures: { ItemFixture }): { React.ReactNode }
	return Dash.map(fixtures, function(fixture, index)
		return React.createElement(Toggle, {
			label = fixture.label,
			hint = if Flags.FoundationToggleBetaUpdate then fixture.hint else nil,
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
			placement = if Flags.FoundationInputGroup then controls.placement else nil,
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
	summary = "ToggleGroup lays related toggles under a shared legend and publishes size and placement to them.",
	stories = stories,
	controls = controls,
}
