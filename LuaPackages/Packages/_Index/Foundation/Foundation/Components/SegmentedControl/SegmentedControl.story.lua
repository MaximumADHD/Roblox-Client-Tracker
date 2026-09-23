local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local FillBehavior = require(Foundation.Enums.FillBehavior)
local Flags = require(Foundation.Utility.Flags)
local InputSize = require(Foundation.Enums.InputSize)
local SegmentedControl = require(Foundation.Components.SegmentedControl)
local SegmentedControlVariant = require(Foundation.Enums.SegmentedControlVariant)
local StoryIcons = require(Foundation.Utility.Stories.Shared.StoryIcons)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local IconName = BuilderIcons.Icon

local LabeledCell = StorySection.LabeledCell
local MatrixSection = StorySection.MatrixSection
local Section = StorySection.Section
local StoryMatrixGrid = StorySection.StoryMatrixGrid
local STORY_FRAME_TAG = StorySection.STORY_FRAME_TAG
local STORY_PAGE_TAG = StorySection.STORY_PAGE_TAG

type FillBehavior = FillBehavior.FillBehavior
type InputSize = InputSize.InputSize
type ItemId = Types.ItemId
type SegmentedControlVariant = SegmentedControlVariant.SegmentedControlVariant

type Segment = {
	id: ItemId,
	text: string?,
	icon: (string | {
		name: BuilderIcons.Icon,
		variant: BuilderIcons.IconVariant?,
	})?,
	ref: React.RefObject<GuiObject?>?,
}

local SIZE_ORDER: { InputSize } = {
	InputSize.XSmall,
	InputSize.Small,
	InputSize.Medium,
	InputSize.Large,
}

local VARIANT_ORDER: { SegmentedControlVariant } = {
	SegmentedControlVariant.Filled,
	SegmentedControlVariant.Stroke,
	SegmentedControlVariant.Utility,
}

local FILL_BEHAVIOR_ORDER: { FillBehavior } = {
	FillBehavior.Fit,
	FillBehavior.Fill,
}

local VALUE_ORDER: { ItemId } = { "1", "2", "3" }

local SIZE_HEADERS = Dash.map(SIZE_ORDER, function(value): string
	return value
end)

local VARIANT_HEADERS = Dash.map(VARIANT_ORDER, function(value): string
	return value
end)

local FILL_BEHAVIOR_HEADERS = Dash.map(FILL_BEHAVIOR_ORDER, function(value): string
	return value
end)

local TEXT_SEGMENTS: { Segment } = {
	{ id = "1", text = "Label" },
	{ id = "2", text = "Label" },
	{ id = "3", text = "Label" },
}

local ICON_SEGMENTS: { Segment } = {
	{ id = "1", icon = IconName.House },
	{ id = "2", icon = IconName.House },
	{ id = "3", icon = IconName.House },
}

local LONG_TEXT = "This is a longer label than the parent width allows"
local LONG_TEXT_SEGMENTS: { Segment } = {
	{ id = "1", text = LONG_TEXT },
	{ id = "2", text = LONG_TEXT },
}

local SEGMENTS_PRESET_TEXT = "Text"
local SEGMENTS_PRESET_ICON = "Icon"
local SEGMENTS_PRESET_ORDER: { string } = { SEGMENTS_PRESET_TEXT, SEGMENTS_PRESET_ICON }

local FILL_HARNESS_WIDTH = 360
local FILL_HARNESS_TAG = "size-full-0 auto-y padding-large radius-medium bg-surface-100"
local CONTENT_PARENT_WIDTH = 400
local CELL_COLUMN_WIDTH = 220
-- A legacy string icon renders wider than a Builder icon at the same size, so each size column is
-- widened to its own widest cell rather than to one shared width.
local ICON_CELL_COLUMN_WIDTHS = { 120, 176, 208, 272 }

local function noop(_id: ItemId) end

local function segmentsFromPreset(preset: string): { Segment }
	if preset == SEGMENTS_PRESET_ICON then
		return ICON_SEGMENTS
	end
	return TEXT_SEGMENTS
end

local function FillHarness(props: {
	LayoutOrder: number?,
	width: number?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = FILL_HARNESS_TAG,
		Size = UDim2.fromOffset(props.width or FILL_HARNESS_WIDTH, 0),
		LayoutOrder = props.LayoutOrder,
	}, props.children)
end

local function StaticControl(props: {
	LayoutOrder: number?,
	size: InputSize?,
	variant: SegmentedControlVariant?,
	fillBehavior: FillBehavior?,
	isCircular: boolean?,
	segments: { Segment }?,
	value: ItemId?,
})
	return React.createElement(SegmentedControl, {
		segments = props.segments or TEXT_SEGMENTS,
		value = props.value or TEXT_SEGMENTS[1].id,
		onActivated = noop,
		size = props.size,
		variant = if Flags.FoundationSegmentedControlBeta then props.variant else nil,
		fillBehavior = if Flags.FoundationSegmentedControlBeta then props.fillBehavior else nil,
		isCircular = props.isCircular,
		LayoutOrder = props.LayoutOrder,
	})
end

local function BoundedLongLabelCell(props: {
	LayoutOrder: number,
	label: string,
	width: number,
	fillBehavior: FillBehavior,
})
	return React.createElement(LabeledCell, {
		LayoutOrder = props.LayoutOrder,
		label = props.label,
	}, {
		Harness = React.createElement(View, {
			tag = "size-full-0 auto-y",
			Size = UDim2.fromOffset(props.width, 0),
			LayoutOrder = 1,
		}, {
			Control = React.createElement(StaticControl, {
				fillBehavior = props.fillBehavior,
				segments = LONG_TEXT_SEGMENTS,
			}),
		}),
	})
end

type PlaygroundControls = {
	segmentsPreset: string,
	value: ItemId,
	size: InputSize,
	variant: SegmentedControlVariant?,
	fillBehavior: FillBehavior?,
	isCircular: boolean,
}

local function PlaygroundStory(props: { controls: PlaygroundControls })
	local controls = props.controls
	local isFill = Flags.FoundationSegmentedControlBeta and controls.fillBehavior == FillBehavior.Fill
	local control = React.createElement(SegmentedControl, {
		segments = segmentsFromPreset(controls.segmentsPreset),
		value = controls.value,
		onActivated = noop,
		size = controls.size,
		variant = if Flags.FoundationSegmentedControlBeta then controls.variant else nil,
		fillBehavior = if Flags.FoundationSegmentedControlBeta then controls.fillBehavior else nil,
		isCircular = controls.isCircular,
	})

	if isFill then
		return React.createElement(View, {
			tag = `size-full-0 auto-y {STORY_FRAME_TAG}`,
		}, {
			Frame = React.createElement(FillHarness, { LayoutOrder = 1 }, {
				Control = control,
			}),
		})
	end

	return React.createElement(View, {
		tag = `auto-xy {STORY_FRAME_TAG}`,
	}, {
		Control = control,
	})
end

local function VariantsStory()
	return React.createElement(View, {
		tag = `auto-xy {STORY_FRAME_TAG}`,
	}, {
		Grid = React.createElement(StoryMatrixGrid, {
			LayoutOrder = 1,
			showLabelColumn = false,
			columnHeaders = VARIANT_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = Dash.map(VARIANT_ORDER, function(variant)
						return React.createElement(StaticControl, {
							variant = variant,
						})
					end),
				},
			},
		}),
	})
end

local function SizingStory()
	return React.createElement(View, {
		tag = `col gap-xxlarge {STORY_PAGE_TAG}`,
	}, {
		Size = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Size",
			showLabelColumn = false,
			columnHeaders = SIZE_HEADERS,
			cellColumnWidth = CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = Dash.map(SIZE_ORDER, function(size)
						return React.createElement(StaticControl, {
							size = size,
						})
					end),
				},
			},
		}),
		FillBehavior = if Flags.FoundationSegmentedControlBeta
			then React.createElement(MatrixSection, {
				LayoutOrder = 2,
				name = "Fill behavior",
				showLabelColumn = false,
				columnHeaders = FILL_BEHAVIOR_HEADERS,
				cellColumnWidth = FILL_HARNESS_WIDTH,
				rows = {
					{
						cells = Dash.map(FILL_BEHAVIOR_ORDER, function(fillBehavior)
							return React.createElement(FillHarness, {}, {
								Control = React.createElement(StaticControl, {
									fillBehavior = fillBehavior,
								}),
							})
						end),
					},
				},
			})
			else nil,
	})
end

local function ShapeStory()
	return React.createElement(View, {
		tag = `col {STORY_PAGE_TAG}`,
	}, {
		Rounding = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Rounding",
			showLabelColumn = false,
			columnHeaders = { "false", "true" },
			cellColumnWidth = CELL_COLUMN_WIDTH,
			rows = {
				{
					cells = {
						React.createElement(StaticControl, {}),
						React.createElement(StaticControl, {
							isCircular = true,
						}),
					},
				},
			},
		}),
	})
end

local function ControlledExample(props: {
	LayoutOrder: number,
})
	local value, setValue = React.useState(TEXT_SEGMENTS[1].id)

	return React.createElement(SegmentedControl, {
		segments = TEXT_SEGMENTS,
		value = value,
		onActivated = function(id)
			setValue(id)
		end,
		LayoutOrder = props.LayoutOrder,
	})
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
		IconByTypeAndSize = React.createElement(MatrixSection, {
			LayoutOrder = 1,
			name = "Icon by type and size",
			note = "size scales the glyph with the segment, and a legacy string measures wider than a Builder icon at the same size, so each kind is swept at every size.",
			showLabelColumn = true,
			labelColumnWidth = 260,
			columnHeaders = SIZE_HEADERS,
			cellColumnWidths = ICON_CELL_COLUMN_WIDTHS,
			rows = StoryIcons.buildIconTypeMatrixRows(function(iconExample)
				return Dash.map(SIZE_ORDER, function(size)
					return React.createElement(StaticControl, {
						size = size,
						segments = {
							{ id = "1", icon = iconExample.name },
							{ id = "2", icon = iconExample.name },
							{ id = "3", icon = iconExample.name },
						},
					})
				end)
			end),
		}),
		Overflow = if Flags.FoundationSegmentedControlBeta
			then React.createElement(
				Section,
				{
					LayoutOrder = 2,
					name = "Overflow",
					note = `Two long labels in a {CONTENT_PARENT_WIDTH}px parent, outlined: Fit measures the labels and ignores that edge, while Fill bounds the control to it and lets the segments run past instead of truncating.`,
					contentTag = "col gap-large size-full-0 auto-y",
				},
				Dash.map(FILL_BEHAVIOR_ORDER, function(fillBehavior, index)
					return React.createElement(BoundedLongLabelCell, {
						LayoutOrder = index,
						label = `fillBehavior = {fillBehavior}`,
						width = CONTENT_PARENT_WIDTH,
						fillBehavior = fillBehavior,
					})
				end)
			)
			else nil,
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
		name = "Shape",
		story = ShapeStory,
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

if Flags.FoundationSegmentedControlBeta then
	table.insert(stories, 2, {
		name = "Variants",
		story = VariantsStory,
	})
end

local controls: { [string]: unknown } = Dash.join(
	{
		segmentsPreset = SEGMENTS_PRESET_ORDER,
		value = VALUE_ORDER,
		size = SIZE_ORDER,
		isCircular = false,
	},
	if Flags.FoundationSegmentedControlBeta
		then {
			variant = VARIANT_ORDER,
			fillBehavior = FILL_BEHAVIOR_ORDER,
		}
		else {}
)

return {
	summary = "SegmentedControl lets a caller pick one option from a short horizontal set.",
	stories = stories,
	controls = controls,
}
