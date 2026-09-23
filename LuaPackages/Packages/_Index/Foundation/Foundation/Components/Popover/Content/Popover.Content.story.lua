local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local PopoverStoryHelpers = require(script.Parent.Parent.PopoverStoryHelpers)
local StorySection = require(Foundation.Utility.Stories.Shared.StorySection)
local View = require(Foundation.Components.View)

local LabeledCell = StorySection.LabeledCell
local Section = StorySection.Section
local StoryMatrixGrid = StorySection.StoryMatrixGrid
local PopoverStage = PopoverStoryHelpers.PopoverStage
local PopoverTarget = PopoverStoryHelpers.PopoverTarget
local matrixLabel = MatrixGridShared.matrixLabel

local ALIGN_ORDER = PopoverStoryHelpers.ALIGN_ORDER
local BACKGROUND_PRESET_ORDER = PopoverStoryHelpers.BACKGROUND_PRESET_ORDER
local ALIGN_OFFSET_EXAMPLE = PopoverStoryHelpers.ALIGN_OFFSET_EXAMPLE
local OFFSET_OPTIONS = PopoverStoryHelpers.OFFSET_OPTIONS
local SIDE_OFFSET_EXAMPLE = PopoverStoryHelpers.SIDE_OFFSET_EXAMPLE
local PAGE_TAG = PopoverStoryHelpers.PAGE_TAG
local PLAYGROUND_FRAME_SIZE = PopoverStoryHelpers.PLAYGROUND_FRAME_SIZE
local PLAYGROUND_TAG = PopoverStoryHelpers.PLAYGROUND_TAG
local RADIUS_ORDER = PopoverStoryHelpers.RADIUS_ORDER
local SIDE_ORDER = PopoverStoryHelpers.SIDE_ORDER
local TALL_ANCHOR_SIZE = PopoverStoryHelpers.TALL_ANCHOR_SIZE
local WIDE_STAGE_WIDTH = PopoverStoryHelpers.WIDE_STAGE_WIDTH

type PopoverContentRadius = PopoverStoryHelpers.PopoverContentRadius

local PLACEMENT_CELL_WIDTH = 96
local PLACEMENT_LABEL_WIDTH = 72

local ARROW_CASES: { { label: string, hasArrow: boolean? } } = {
	{ label = "Default (arrow)" },
	{ label = "hasArrow = false", hasArrow = false },
}

type OffsetCase = {
	label: string,
	side: PopoverSide.PopoverSide | { position: PopoverSide.PopoverSide, offset: number },
	align: PopoverAlign.PopoverAlign | { position: PopoverAlign.PopoverAlign, offset: number },
}

local OFFSET_CASES: { OffsetCase } = {
	{ label = "Default", side = PopoverSide.Bottom, align = PopoverAlign.Start },
	{
		label = `side offset {SIDE_OFFSET_EXAMPLE}`,
		side = { position = PopoverSide.Bottom, offset = SIDE_OFFSET_EXAMPLE },
		align = PopoverAlign.Start,
	},
	{
		label = `align offset {ALIGN_OFFSET_EXAMPLE}`,
		side = PopoverSide.Bottom,
		align = { position = PopoverAlign.Start, offset = ALIGN_OFFSET_EXAMPLE },
	},
}

local function BackgroundStyleCell(props: { LayoutOrder: number, preset: string }): React.ReactNode
	local backgroundStyle = PopoverStoryHelpers.useBackgroundStylePreset(props.preset)

	return React.createElement(LabeledCell, {
		LayoutOrder = props.LayoutOrder,
		label = props.preset,
	}, {
		Target = React.createElement(PopoverTarget, {
			LayoutOrder = 1,
			backgroundStyle = backgroundStyle,
		}),
	})
end

local function PlaygroundStory(props: {
	controls: {
		side: PopoverSide.PopoverSide,
		align: PopoverAlign.PopoverAlign,
		radius: PopoverContentRadius,
		hasArrow: boolean,
		sideOffset: number,
		alignOffset: number,
		backgroundStylePreset: string,
	},
}): React.ReactNode
	local controls = props.controls
	local backgroundStyle = PopoverStoryHelpers.useBackgroundStylePreset(controls.backgroundStylePreset)

	return React.createElement(View, {
		tag = PLAYGROUND_TAG,
		Size = PLAYGROUND_FRAME_SIZE,
	}, {
		Stage = React.createElement(PopoverStage, {
			LayoutOrder = 1,
			width = WIDE_STAGE_WIDTH,
			side = { position = controls.side, offset = controls.sideOffset },
			align = { position = controls.align, offset = controls.alignOffset },
			radius = controls.radius,
			hasArrow = controls.hasArrow,
			backgroundStyle = backgroundStyle,
		}),
	})
end

local function PlacementStory(): React.ReactNode
	return React.createElement(View, {
		tag = PAGE_TAG,
	}, {
		Side = React.createElement(Section, {
			LayoutOrder = 1,
			name = "Side",
			note = "align is the column axis because side decides which axis it runs along: horizontal for Top and Bottom, vertical for Left and Right. Press a cell to open it. In a real viewport the panel switches to the opposite side when the requested one has no space and the opposite one does, and is clamped to the viewport edges; alignment itself never flips.",
			contentTag = "col auto-xy",
		}, {
			Grid = React.createElement(StoryMatrixGrid, {
				LayoutOrder = 1,
				showLabelColumn = true,
				labelColumnWidth = PLACEMENT_LABEL_WIDTH,
				columnHeaders = PopoverStoryHelpers.headerLabels(ALIGN_ORDER),
				cellColumnWidth = PLACEMENT_CELL_WIDTH,
				rows = Dash.map(SIDE_ORDER, function(side)
					return {
						label = matrixLabel(side),
						cells = Dash.map(ALIGN_ORDER, function(align)
							return React.createElement(PopoverTarget, {
								side = side,
								align = align,
								anchorSize = TALL_ANCHOR_SIZE,
							})
						end),
					}
				end),
			}),
		}),
		Offset = React.createElement(
			Section,
			{
				LayoutOrder = 2,
				name = "Offset",
				note = "side and align each accept a { position, offset } table. The offset adds to the gap the panel already reserves for the arrow, and an align offset moves the panel along the cross axis rather than away from the anchor.",
			},
			Dash.map(OFFSET_CASES, function(case, index)
				return React.createElement(LabeledCell, {
					key = case.label,
					LayoutOrder = index,
					label = case.label,
				}, {
					Target = React.createElement(PopoverTarget, {
						LayoutOrder = 1,
						side = case.side,
						align = case.align,
						anchorSize = TALL_ANCHOR_SIZE,
					}),
				})
			end)
		),
	})
end

local function ShapeStory(): React.ReactNode
	return React.createElement(View, {
		tag = PAGE_TAG,
	}, {
		Rounding = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Rounding",
			},
			Dash.map(RADIUS_ORDER, function(radius, index)
				return React.createElement(LabeledCell, {
					key = radius,
					LayoutOrder = index,
					label = radius,
				}, {
					Target = React.createElement(PopoverTarget, {
						LayoutOrder = 1,
						radius = radius,
					}),
				})
			end)
		),
		Arrow = React.createElement(
			Section,
			{
				LayoutOrder = 2,
				name = "Arrow",
				note = "The arrow is only drawn for an element anchor. Popover.Content forces it off whenever the anchor is a virtual ref, so hasArrow = true has no effect on the anchor arms covered by Popover.Anchor.",
			},
			Dash.map(ARROW_CASES, function(case, index)
				return React.createElement(LabeledCell, {
					key = case.label,
					LayoutOrder = index,
					label = case.label,
				}, {
					Target = React.createElement(PopoverTarget, {
						LayoutOrder = 1,
						hasArrow = case.hasArrow,
					}),
				})
			end)
		),
	})
end

local function BackgroundStyleStory(): React.ReactNode
	return React.createElement(View, {
		tag = PAGE_TAG,
	}, {
		BackgroundStyle = React.createElement(
			Section,
			{
				LayoutOrder = 1,
				name = "Background style",
				note = "The arrow takes the same fill as the panel, so check that the two read as one surface. The default cell omits the prop and resolves to Surface_100.",
			},
			Dash.map(BACKGROUND_PRESET_ORDER, function(preset, index)
				return React.createElement(BackgroundStyleCell, {
					key = preset,
					LayoutOrder = index,
					preset = preset,
				})
			end)
		),
	})
end

return {
	summary = "The floating panel — where it sits relative to the anchor, and how the surface is drawn.",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Placement",
			summary = "Press an anchor to open its panel.",
			story = PlacementStory,
		},
		{
			name = "Shape",
			story = ShapeStory,
		},
		{
			name = "Background style",
			story = BackgroundStyleStory,
		},
	},
	controls = {
		side = SIDE_ORDER,
		align = ALIGN_ORDER,
		radius = RADIUS_ORDER,
		hasArrow = true,
		sideOffset = OFFSET_OPTIONS,
		alignOffset = OFFSET_OPTIONS,
		backgroundStylePreset = BACKGROUND_PRESET_ORDER,
	},
}
